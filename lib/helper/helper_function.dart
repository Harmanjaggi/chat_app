class HelperFunction {
  static String getName(String r) {
    return r.substring(r.indexOf("_") + 1);
  }

  static String getId(String res) {
    return res.substring(0, res.indexOf("_"));
  }
}