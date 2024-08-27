import 'package:shared_preferences/shared_preferences.dart';

class SharedGlobal {
  static final SharedGlobal myInstance = SharedGlobal._instance();

  SharedGlobal._instance();

  factory SharedGlobal() {
    return myInstance;
  }

  late SharedPreferences _preferences;

  Future<void> initSharedPreferences() async {
    _preferences = await SharedPreferences.getInstance();
  }

  set fullName(String value){
    _preferences.setString("fullName", value);
  }

  String get fullName{
    return _preferences.getString("fullName") ?? "-";
  }


}