import 'package:flutter/material.dart';
import 'package:kardxpress_app/view/widget/home_widget.dart';
import 'package:kardxpress_app/view/widget/other_widget.dart';
import 'package:kardxpress_app/view/widget/setting_widget.dart';

class Indexscreens extends ChangeNotifier {
  int index = 0;

  List<Widget> Screens = [
    const HomeWidget(),
    const OtherWidget(),
    const SettingWidget(),
  ];
  changeIndex(int value) {
    index = value;
    notifyListeners();
  }
}
