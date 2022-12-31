import '../../../data/repository/database_service.dart';
import '../../../../../helper/helper_function.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState.loading()) {
    getGroups();
  }
  String? email, userName, token;
  Stream? groups;

  getGroups() async {
    try {
      email = await HelperFunctions.getUserEmail();
      userName = await HelperFunctions.getUserName();
      token = await HelperFunctions.getUserToken();
      groups =
          await DatabaseService(uid: FirebaseAuth.instance.currentUser!.uid)
              .getUserGroups();
      if (groups != null) {
        emit(HomeState.success(groups!));
      } else {
        emit(const HomeState.loading());
      }
    } catch (e) {
      emit(HomeState.failure(e));
    }
  }
}
