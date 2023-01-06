import 'package:chat_app/features/group_page/data/models/search_tile_model/search_tile_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../group_page/data/repository/database_service.dart';

part 'search_tile_state.dart';
part 'search_tile_cubit.freezed.dart';

class SearchTileCubit extends Cubit<SearchTileState> {
  SearchTileModel data;
  SearchTileCubit(this.data) : super(const SearchTileState.loading()) {
    checkJoined(data);
  }
  String? uid;
  bool? isJoined;
  checkJoined(SearchTileModel data) async {
    try {
      uid = FirebaseAuth.instance.currentUser!.uid;
      isJoined = await DatabaseService(uid: uid)
          .isUserJoined(data.groupName, data.groupId, data.userName);
      emit(SearchTileState.success(isJoined!));
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  toggleGroupJoin(SearchTileModel data) async {
    try {
      await DatabaseService(uid: uid).toggleGroupJoin(
        data.groupId,
        data.userName,
        data.groupName,
      );
      emit(SearchTileState.success(!isJoined!));
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
