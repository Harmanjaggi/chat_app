import '../models/sign_in_model/sign_in_model.dart';
import '../models/sign_up_model/sign_up_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../../helper/helper_function.dart';
import '../../../home_page/data/repository/database_service.dart';

class AuthService {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  Future<String?> getUserToken() async {
    return HelperFunctions.getUserToken();
  }

  Future signIn(SignInModel userInput) async {
    try {
      User? user = (await firebaseAuth.signInWithEmailAndPassword(
              email: userInput.email, password: userInput.password))
          .user;
      if (user != null) {
        HelperFunctions.setUserToken(user.uid);
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
        HelperFunctions.setUserToken(user.uid);
        await DatabaseService(uid: user.uid)
            .savingUserData(userInput.fullName, userInput.email);
        return true;
      }
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  // signout
  Future signOut() async {
    try {
      await HelperFunctions.removeUserToken();
      await HelperFunctions.removeUserName();
      await HelperFunctions.removeUserEmail();
      await firebaseAuth.signOut();
    } catch (e) {
      return null;
    }
  }
}
