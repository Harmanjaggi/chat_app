import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../helper/local_datasource.dart';
import '../../../../group_page/data/models/search_tile_model/search_tile_model.dart';
import '../../../../group_page/data/repository/database_service.dart';

part 'search_group_state.dart';
part 'search_group_cubit.freezed.dart';

class SearchGroupCubit extends Cubit<SearchGroupState> {
  SearchGroupCubit() : super(const SearchGroupState.initial()) {
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

  getSearchedGroup(String search) async {
    if (search.isEmpty) return;
    try {
      QuerySnapshot searchSnapshot =
          await DatabaseService().searchByName(search);
      final data = searchSnapshot.docs
          .map((e) => SearchTileModel(
                userName: userName ?? '',
                groupId: e['groupId'],
                groupName: e['groupName'],
                adminName: e['admin'],
              ))
          .toList();
      searchSnapshot.docs.isNotEmpty
          ? emit(SearchGroupState.success(data))
          : emit(const SearchGroupState.initial());
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
