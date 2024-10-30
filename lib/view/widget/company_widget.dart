import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constant/constant.dart';

class CompanyWidget extends StatelessWidget {
  const CompanyWidget(
      {super.key, required this.Path, required this.onTap, required this.text});
  final String Path;
  final void Function()? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width / 3,
        decoration: BoxDecoration(
          color: SubbackColor,
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                fontFamily: SubFont,
                fontSize: 22,
                color: TextColor,
              ),
            ),
            SvgPicture.asset(
              Path,
              width: 100,
            ),
          ],
        ),
      ),
    );
  }
}
