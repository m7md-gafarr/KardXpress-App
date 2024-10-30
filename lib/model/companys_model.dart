import 'package:flutter/material.dart';
import 'package:kardxpress_app/generated/l10n.dart';

class CompanysModel {
  final String Path;
  final String text;
  final String Code;
  final int CardCount;

  CompanysModel(
      {required this.Path,
      required this.text,
      required this.Code,
      required this.CardCount});

  static List<CompanysModel> CompList(BuildContext context) {
    return [
      CompanysModel(
        Path: "assets/image/Companys/Vodafone.svg",
        text: S.of(context).Vodafone,
        Code: "*858*",
        CardCount: 16,
      ),
      CompanysModel(
        Path: "assets/image/Companys/Orange.svg",
        text: S.of(context).Orange,
        Code: "*102*",
        CardCount: 16,
      ),
      CompanysModel(
        Path: "assets/image/Companys/WE.svg",
        text: S.of(context).We,
        Code: "*555*",
        CardCount: 16,
      ),
      CompanysModel(
        Path: "assets/image/Companys/Etisalat.svg",
        text: S.of(context).Etisalat,
        Code: "*556*",
        CardCount: 15,
      ),
    ];
  }
}
