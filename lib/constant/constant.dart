import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Color TextColor = const Color.fromARGB(255, 0, 0, 0);
Color SubTextColor = const Color(0xff343A40);

Color backColor = const Color.fromARGB(255, 255, 255, 255);
Color SubbackColor = const Color.fromARGB(255, 244, 244, 244);

Color btnColor = const Color(0xff007BFF);

Color errorColor = const Color(0xffDC3545);

///////////////////////////////////////////////////////////////

const IntroScreen = "/IntroScreen";
const HomeScreen = "/";

////////////////////////////////////////////////

bool IsArabic() {
  Intl.systemLocale.codeUnits;
  return Intl.getCurrentLocale() == "ar";
}

/////////////////////////////////////////////////

const String PrimaryFont = "Readex";
const String SubFont = "Cairo";
