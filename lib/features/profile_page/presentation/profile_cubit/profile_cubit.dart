import 'dart:io';
import 'package:chat_app/features/profile_page/data/models/profile_model/profile_model.dart';
import 'package:chat_app/features/profile_page/data/repositories/profile_service.dart';
import 'package:chat_app/helper/local_datasource.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit() : super(const ProfileState.loading()) {
    getProfileData();
  }
  PlatformFile? pickedFile;
  ProfileModel? data;

  String? uid;

  getProfileData() async {
    try {
      uid = FirebaseAuth.instance.currentUser!.uid;
      data = ProfileModel(
        userName: await LocalDatasource.getUserName(),
        email: await LocalDatasource.getUserEmail(),
      );
      data != null
          ? emit(ProfileState.success(data!, null))
          : emit(const ProfileState.loading());
    } catch (e) {
      emit(ProfileState.failure(e));
    }
  }

  getProfileImage() async {
    emit(const ProfileState.loading());
    try {
      final result = await FilePicker.platform.pickFiles(
        type: FileType.image,
      );
      if (result != null) {
        pickedFile = result.files.first;
        File imageFile = File(pickedFile!.path!);
        String fileName = DateTime.now().microsecondsSinceEpoch.toString();
        Reference firebaseStorageRef =
            FirebaseStorage.instance.ref().child('images');
        final refImageToUpload = firebaseStorageRef.child(fileName);
        //Store the file
        await refImageToUpload.putFile(imageFile);
        //Success: get the download URL
        String imageUrl = await refImageToUpload.getDownloadURL();
        await ProfielService(uid: uid).updateProfilePic(imageUrl);
        emit(ProfileState.success(data!, pickedFile));
      } else {
        emit(const ProfileState.loading());
      }
    } catch (e) {
      emit(ProfileState.failure(e));
    }
  }

  Future<MultipartFile?> getMultiPath(PlatformFile? file) async {
    try {
      return MultipartFile.fromFile(pickedFile!.path!);
    } catch (e) {
      return null;
    }
  }
}
