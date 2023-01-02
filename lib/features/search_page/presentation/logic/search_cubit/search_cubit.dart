import 'package:chat_app/features/chat_page/data/models/group_model/group_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../../helper/local_datasource.dart';
import '../../../../home_page/data/repository/database_service.dart';

part 'search_state.dart';
part 'search_cubit.freezed.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(const SearchState.initial()) {
    getCurrentUserIdandName();
  }

  String? userName;
  User? user;
  QuerySnapshot? searchSnapshot;
  getCurrentUserIdandName() async {
    emit(const SearchState.loading());
    try {
      userName = await LocalDatasource.getUserName();
      user = FirebaseAuth.instance.currentUser;
      emit(const SearchState.initial());
    } catch (e) {
      emit(SearchState.failure(e));
    }
  }

  getSearchedGroup(String search) async {
    if (search.isEmpty) return;
    emit(const SearchState.loading());
    try {
      searchSnapshot = await DatabaseService().searchByName(search);
      searchSnapshot != null
          ? emit(SearchState.success(searchSnapshot!))
          : emit(const SearchState.loading());
    } catch (e) {
      emit(SearchState.failure(e));
    }
  }
}
