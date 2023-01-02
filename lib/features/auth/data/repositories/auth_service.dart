import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/sign_in_model/sign_in_model.dart';
import '../models/sign_up_model/sign_up_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../../helper/local_datasource.dart';
import '../../../home_page/data/repository/database_service.dart';

class AuthService {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future<String?> getUserToken() async {
    return LocalDatasource.getUserToken();
  }

  Future signIn(SignInModel userInput) async {
    try {
      User? user = (await firebaseAuth.signInWithEmailAndPassword(
              email: userInput.email, password: userInput.password))
          .user;
      if (user != null) {
        QuerySnapshot snapshot =
              await DatabaseService(uid: FirebaseAuth.instance.currentUser!.uid)
                  .gettingUserData(userInput.email);
        LocalDatasource.setUserToken(user.uid);
        LocalDatasource.setUserEmail(userInput.email);
        LocalDatasource.setUserName(snapshot.docs[0]['fullName']);
        return true;
      }
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future signUp(SignUpModel userInput) async {
    try {
      User? user = (await firebaseAuth.createUserWithEmailAndPassword(
              email: userInput.email, password: userInput.password))
          .user;

      if (user != null) {
        LocalDatasource.setUserToken(user.uid);
        await DatabaseService(uid: user.uid)
            .savingUserData(userInput.fullName, userInput.email);
        LocalDatasource.setUserToken(user.uid);
        LocalDatasource.setUserEmail(userInput.email);
        LocalDatasource.setUserName(userInput.fullName);
        return true;
      }
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  // signout
  Future signOut() async {
    try {
      await LocalDatasource.removeUserToken();
      await LocalDatasource.removeUserName();
      await LocalDatasource.removeUserEmail();
      await firebaseAuth.signOut();
    } catch (e) {
      return null;
    }
  }
}
