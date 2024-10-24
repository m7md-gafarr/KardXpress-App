import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageProvider extends ChangeNotifier {
  late String language;
  late bool selected;
  late SharedPreferences preferences;
  ChangeLanguageToEN() async {
    preferences = await SharedPreferences.getInstance();
    preferences.setString("language", "en");
    ReadLanguageAndSelected();

    notifyListeners();
  }

  ChangeLanguageToAR() async {
    preferences.setString("language", "ar");
    preferences.setBool("selected", false);
    ReadLanguageAndSelected();

    notifyListeners();
  }

  ReadLanguageAndSelected() async {
    preferences = await SharedPreferences.getInstance();
    language = preferences.getString("language") ?? "ar";
    selected = preferences.getBool("selected") ?? false;
    notifyListeners();
  }
}
