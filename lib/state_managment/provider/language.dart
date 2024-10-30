import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:ui' as ui;

class LanguageProvider extends ChangeNotifier {
  late SharedPreferences preferences;
  String language = ui.window.locale.languageCode;
  String Tranlang =
      ui.window.locale.languageCode == "ar" ? "العربية" : "English";
  ChangeLanguageToEN() async {
    preferences = await SharedPreferences.getInstance();
    print("Before");
    print(preferences.getString("language"));
    preferences.setString("language", "en");
    print("After");
    print(preferences.getString("language"));

    ReadLanguage();
    notifyListeners();
  }

  ChangeLanguageToAR() async {
    preferences = await SharedPreferences.getInstance();
    preferences.setString("language", "ar");

    ReadLanguage();
    notifyListeners();
  }

  ReadLanguage() async {
    preferences = await SharedPreferences.getInstance();

    language =
        preferences.getString("language") ?? ui.window.locale.languageCode;

    Tranlang = language == "ar" ? "العربية" : "English";

    notifyListeners();
  }
}
