import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class FollowMyWidget extends StatelessWidget {
  const FollowMyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Brand(
          Brands.facebook,
          size: 50,
        ),
        Brand(
          Brands.instagram,
          size: 50,
        ),
        Brand(
          Brands.linkedin,
          size: 50,
        ),
      ],
    );
  }
}
