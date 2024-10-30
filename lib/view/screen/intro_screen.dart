import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kardxpress_app/constant/constant.dart';
import 'package:kardxpress_app/generated/l10n.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Intro_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              const Spacer(
                flex: 5,
              ),
              SvgPicture.asset(
                "assets/logo/Logo.svg",
                height: MediaQuery.of(context).size.width - 50,
              ),
              const Spacer(
                flex: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  S.of(context).intro_0,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: btnColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 19,
                      fontFamily: PrimaryFont),
                ),
              ),
              const Spacer(
                flex: 3,
              ),
              ElevatedButton(
                onPressed: () async {
                  SharedPreferences prefs =
                      await SharedPreferences.getInstance();

                  prefs.setBool("intro", true);
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    HomeScreen,
                    (Route<dynamic> route) => false,
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: btnColor,
                  fixedSize: Size(double.maxFinite, 50),
                ),
                child: Text(
                  S.of(context).intro_4,
                  style: TextStyle(
                    color: TextColor,
                    fontFamily: SubFont,
                    fontSize: 20,
                  ),
                ),
              ),
              const Spacer(
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
