import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefController_1 {
  SharedPrefController_1._();

  static SharedPrefController_1? _instance;
  late SharedPreferences sharedPreferences;

  factory SharedPrefController_1() {
    return _instance ??= SharedPrefController_1._();
  }

  Future initSharedPreferences() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<void> saveAccountType({required String accountType}) async {
    await sharedPreferences.setString("accountType", accountType);
  }

  String? get accountType{
    return sharedPreferences.getString("accountType");
  }
    // عند لتسجيل نمرر نوع العقار
}