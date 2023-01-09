import 'package:shared_preferences/shared_preferences.dart';

class LocalDatasource {
  //keys
  static const String _userToken = "TOKENKEY";
  static const String _userNameKey = "USERNAMEKEY";
  static const String _userEmailKey = "USEREMAILKEY";
  static const String _userTypeKey = "USERTYPEKEY";

  // token
  static Future<bool> setUserToken(String token) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(_userToken, token);
  }

  static Future<bool> removeUserToken() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.remove(_userToken);
  }

  static Future<String?> getUserToken() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getString(_userToken);
  }

  // username
  static Future<bool> setUserName(String userName) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(_userNameKey, userName);
  }

  static Future<bool> removeUserName() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.remove(_userNameKey);
  }

  static Future<String?> getUserName() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getString(_userNameKey);
  }

  // useremail
  static Future<bool> setUserEmail(String userEmail) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(_userEmailKey, userEmail);
  }

  static Future<bool> removeUserEmail() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.remove(_userEmailKey);
  }

  static Future<String?> getUserEmail() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getString(_userEmailKey);
  }

  // type
  static Future<bool> setUserType(String userType) async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.setString(_userTypeKey, userType);
  }

  static Future<bool> removeUserType() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return await sf.remove(_userTypeKey);
  }

  static Future<String?> getUserType() async {
    SharedPreferences sf = await SharedPreferences.getInstance();
    return sf.getString(_userTypeKey);
  }
}
