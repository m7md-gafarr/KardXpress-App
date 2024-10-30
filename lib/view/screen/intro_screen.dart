import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kardxpress_app/constant/constant.dart';
import 'package:kardxpress_app/generated/l10n.dart';
import 'package:kardxpress_app/model/intro_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Intro_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(),
        child: SafeArea(
          child: PageView.builder(
            itemBuilder: (context, index) {
              return Column(
                children: [
                  const Spacer(
                    flex: 5,
                  ),
                  SvgPicture.asset(
                    IntroModel.IntroData(context)[index].Path,
                    height: MediaQuery.of(context).size.width - 50,
                  ),
                  const Spacer(
                    flex: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      IntroModel.IntroData(context)[index].Text,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: btnColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          fontFamily: PrimaryFont),
                    ),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ElevatedButton(
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
                        fixedSize:
                            Size(MediaQuery.of(context).size.width - 16, 50),
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
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                ],
              );
            },
            itemCount: IntroModel.IntroData(context).length,
          ),
        ),
      ),
    );
  }
}
