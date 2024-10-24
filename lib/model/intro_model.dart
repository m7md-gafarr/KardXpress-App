import 'package:flutter/material.dart';
import 'package:kardxpress_app/generated/l10n.dart';

class IntroModel {
  final String Path;
  final String Text;
  IntroModel({
    required this.Path,
    required this.Text,
  });

  static List<IntroModel> IntroData(BuildContext context) {
    return [
      IntroModel(
        Text: S.of(context).intro_0,
        Path: "assets/logo/Logo.svg",
      ),
      IntroModel(
        Text: S.of(context).intro_1,
        Path: "assets/image/Billy2.svg",
      ),
      IntroModel(
        Text: S.of(context).intro_2,
        Path: "assets/image/Billy1.svg",
      ),
    ];
  }
}
