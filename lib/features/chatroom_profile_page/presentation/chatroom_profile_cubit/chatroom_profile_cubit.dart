import 'package:chat_app/features/profile_page/data/models/profile_model/profile_model.dart';
import 'package:chat_app/features/profile_page/data/repositories/profile_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chatroom_profile_state.dart';
part 'chatroom_profile_cubit.freezed.dart';

class ChatroomProfileCubit extends Cubit<ChatroomProfileState> {
  String userName;
  ChatroomProfileCubit(this.userName) : super(const ChatroomProfileState(null)) {
    getData();
  }
  getData() async {
    final snapsot = await ProfielService().getUser(userName);
    ProfileModel data = ProfileModel(
        userName: userName,
        email: snapsot['email'],
        profilePic: snapsot['profilePic'],
        type: snapsot['type'],
      );
      emit(ChatroomProfileState(data));
  }
}
