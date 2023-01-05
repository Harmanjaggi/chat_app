import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../helper/local_datasource.dart';
import '../../../data/models/search_tile_model/search_tile_model.dart';
import '../../../data/repository/database_service.dart';
import 'package:equatable/equatable.dart';

part 'search_group_bloc.freezed.dart';
part 'search_group_event.dart';
part 'search_group_state.dart';

class SearchGroupBloc extends Bloc<SearchGroupEvent, SearchGroupState> {
  SearchGroupBloc() : super(SearchGroupInitial()) {
    on<_SearchGroupEvent>(
      (event, emit) async => await _search(event.query, emit),
    );
  }

  String? userName;
  Future<void> _search(String query, Emitter<SearchGroupState> emit) async {
    if (query.isEmpty) {
      emit(SearchGroupInitial());
      return;
    }
    emit(SearchGroupLoading());
    try {
      userName = await LocalDatasource.getUserName();
      QuerySnapshot searchSnapshot =
          await DatabaseService().searchByName(query);
      final data = searchSnapshot.docs
          .map((e) => SearchTileModel(
                userName: userName ?? '',
                groupId: e['groupId'],
                groupName: e['groupName'],
                adminName: e['admin'],
              ))
          .toList();
      searchSnapshot.docs.isNotEmpty
          ? emit(SearchGroupSuccess(data))
          : emit(SearchGroupInitial());
    } catch (e) {
      emit(SearchGroupError(e));
    }
  }
}
