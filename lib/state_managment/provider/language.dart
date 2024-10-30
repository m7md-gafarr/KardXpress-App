import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:ui' as ui;

class LanguageProvider extends ChangeNotifier {
  late SharedPreferences preferences;
  String language = ui.window.locale.languageCode;

  ChangeLanguage() async {
    preferences = await SharedPreferences.getInstance();

    language == "en"
        ? preferences.setString("language", "ar")
        : preferences.setString("language", "en");

    ReadLanguage();
    notifyListeners();
  }

  ReadLanguage() async {
    preferences = await SharedPreferences.getInstance();

    language =
        preferences.getString("language") ?? ui.window.locale.languageCode;

    notifyListeners();
  }
}
