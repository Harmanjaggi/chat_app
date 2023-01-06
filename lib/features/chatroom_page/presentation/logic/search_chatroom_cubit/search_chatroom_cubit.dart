import 'package:chat_app/features/chatroom_page/data/models/search_chatroom_model/search_chatroom_model.dart';
import 'package:chat_app/helper/local_datasource.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/repository/private_db_service.dart';

part 'search_chatroom_state.dart';
part 'search_chatroom_cubit.freezed.dart';

class SearchChatroomCubit extends Cubit<SearchChatroomState> {
  SearchChatroomCubit() : super(const SearchChatroomState.initial()) {
    getCurrentUserName();
  }

  String? userName;
  getCurrentUserName() async {
    try {
      userName = await LocalDatasource.getUserName();
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  getSearchedChatroom(String search) async {
    if (search.isEmpty) return;
    try {
      QuerySnapshot searchSnapshot =
          await PrivateDBService().searchByName(search);
      final data = searchSnapshot.docs
          .map((e) => SearchChatroomModel(
                userName: userName ?? '',
                chatroomName: e['fullName'],
                uid: e['uid'],
                email: e['email'],
              ))
          .toList();
      searchSnapshot.docs.isNotEmpty
          ? emit(SearchChatroomState.success(data))
          : emit(const SearchChatroomState.initial());
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
