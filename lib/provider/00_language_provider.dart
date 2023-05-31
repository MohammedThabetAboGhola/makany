import 'dart:ui';

import 'package:flutter/cupertino.dart';

import '../prefs/shared_pref_controller.dart';

class LanguageProvider extends ChangeNotifier {
  String? cacheLanguage = SharedPrefController().getValueFor<String>(PrefKeys.language.name);

  String get language {
    String languageCode = window.locale.languageCode;
    String code = (languageCode == "en" || languageCode == "ar") ? languageCode : "en";
    return cacheLanguage ?? code;
  }

  set language(String value) {
    cacheLanguage = value;
  }

  void changeLanguage() {
    print(language);
    language = language == "en" ? "ar" : "en";
    print(cacheLanguage);
    SharedPrefController().changeLanguage(langCode: language);
    notifyListeners();
  }
}
