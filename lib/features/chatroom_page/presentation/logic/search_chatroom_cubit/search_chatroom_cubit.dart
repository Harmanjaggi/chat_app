import 'package:chat_app/helper/local_datasource.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repository/private_db_service.dart';

class SearchChatroomCubit extends Cubit<QuerySnapshot?> {
  SearchChatroomCubit() : super(null) {
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

      emit(searchSnapshot);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
