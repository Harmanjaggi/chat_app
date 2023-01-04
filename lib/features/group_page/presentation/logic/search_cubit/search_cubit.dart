import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../helper/local_datasource.dart';
import '../../../../group_page/data/repository/database_service.dart';

class SearchCubit extends Cubit<QuerySnapshot?> {
  SearchCubit() : super(null) {
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
      emit(searchSnapshot);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
