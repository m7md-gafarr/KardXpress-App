import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kardxpress_app/constant/constant.dart';
import 'package:kardxpress_app/generated/l10n.dart';
import 'package:kardxpress_app/state_managment/provider/indexscreens.dart';
import 'package:provider/provider.dart';

class BottomNavbarWidget extends StatefulWidget {
  const BottomNavbarWidget({super.key});

  @override
  State<BottomNavbarWidget> createState() => _BottomNavbarWidgetState();
}

class _BottomNavbarWidgetState extends State<BottomNavbarWidget> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Indexscreens>(
      builder: (context, value, child) => BottomNavigationBar(
        onTap: (value) {
          context.read<Indexscreens>().changeIndex(value);
        },
        backgroundColor: Colors.white,
        unselectedLabelStyle: const TextStyle(
          fontFamily: SubFont,
        ),
        selectedLabelStyle: TextStyle(
          color: btnColor,
          fontWeight: FontWeight.w700,
          fontFamily: SubFont,
        ),
        selectedItemColor: btnColor,
        selectedFontSize: 16,
        unselectedFontSize: 15,
        currentIndex: context.read<Indexscreens>().index,
        items: [
          BottomNavigationBarItem(
              icon: const Icon(Iconsax.home),
              label: S.of(context).BottomnavBar_1),
          BottomNavigationBarItem(
              icon: const Icon(Iconsax.bank),
              label: S.of(context).BottomnavBar_2),
          BottomNavigationBarItem(
              icon: const Icon(Iconsax.menu_1),
              label: S.of(context).BottomnavBar_3),
        ],
      ),
    );
  }
}
