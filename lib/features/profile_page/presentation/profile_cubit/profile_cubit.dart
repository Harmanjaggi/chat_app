import 'package:chat_app/features/profile_page/data/models/profile_model/profile_model.dart';
import 'package:chat_app/helper/local_datasource.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(const ProfileState.loading()) {
    getProfileData();
  }
  getProfileData() async {
    try {
      ProfileModel data = ProfileModel(
        userName: await LocalDatasource.getUserEmail(),
        email: await LocalDatasource.getUserName(),
      );
      emit(ProfileState.success(data));
    } catch (e) {
      emit(ProfileState.failure(e));
    }
  }
}
