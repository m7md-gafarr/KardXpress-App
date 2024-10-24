import 'package:flutter/material.dart';
import 'package:kardxpress_app/generated/l10n.dart';

class CompanysModel {
  final String Path;
  final String text;
  final String Code;

  CompanysModel({
    required this.Path,
    required this.text,
    required this.Code,
  });

  static List<CompanysModel> CompList(BuildContext context) {
    return [
      CompanysModel(
        Path: "assets/image/372324.svg",
        text: S.of(context).Vodafone,
        Code: "*858*",
      ),
      CompanysModel(
        Path: "assets/image/372330.svg",
        text: S.of(context).Orange,
        Code: "*102*",
      ),
      CompanysModel(
        Path: "assets/image/We_logo.svg",
        text: S.of(context).We,
        Code: "*555*",
      ),
      CompanysModel(
        Path: "assets/image/372328.svg",
        text: S.of(context).Etisalat,
        Code: "*556*",
      ),
    ];
  }
}
