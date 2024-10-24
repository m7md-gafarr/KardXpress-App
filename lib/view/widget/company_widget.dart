import 'package:flutter/material.dart';

class CompanyWidget extends StatelessWidget {
  const CompanyWidget({super.key, required this.icon, required this.onTap});
  final IconData? icon;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        height: MediaQuery.of(context).size.width / 2 - 50,
        width: MediaQuery.of(context).size.width / 2 - 50,
        decoration: const BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Icon(icon),
      ),
    );
  }
}
