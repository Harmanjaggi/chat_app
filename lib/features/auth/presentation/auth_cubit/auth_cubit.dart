import '../../data/repositories/auth_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/sign_in_model/sign_in_model.dart';
import '../../data/models/sign_up_model/sign_up_model.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

enum Status { login, register }

class AuthCubit extends Cubit<AuthState> {
  AuthService repository;
  String? token;
  PageController controller = PageController();

  AuthCubit(this.repository) : super(const AuthState.initial()) {
    currentState();
  }

  Status page = Status.login;

  void pageSetter() {
    if (controller.hasClients) {
      controller.animateToPage(
        page == Status.login ? 1 : 0,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    }
    page == Status.login ?  page = Status.register : page = Status.login;
  }

  void currentState() async {
    token = await repository.getUserToken();
    await Future.delayed(const Duration(seconds: 1));
    if (token != null) {
      emit(AuthState.authorized(token!));
    } else {
      emit(const AuthState.unathorized(null));
    }
  }

  Future<void> signIn(SignInModel user) async {
    try {
      emit(const AuthState.loading());
      await repository.signIn(user);
      token = await repository.getUserToken();
      if (token != null) {
        emit(AuthState.authorized(token!));
      } else {
        emit(const AuthState.unathorized(null));
      }
    } catch (e) {
      emit(AuthState.unathorized(e.toString()));
    }
  }

  Future<void> signUp(SignUpModel user) async {
    try {
      emit(const AuthState.loading());
      await repository.signUp(user);
      token = await repository.getUserToken();
      if (token != null) {
        emit(AuthState.authorized(token!));
      } else {
        emit(const AuthState.unathorized(null));
      }
    } catch (e) {
      emit(AuthState.unathorized(e.toString()));
    }
  }

  Future<void> signOut() async {
    emit(const AuthState.loading());
    await repository.signOut();
    token = null;
    emit(const AuthState.unathorized(null));
  }
}
