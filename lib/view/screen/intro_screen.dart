import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kardxpress_app/constant/constant.dart';
import 'package:kardxpress_app/generated/l10n.dart';
import 'package:kardxpress_app/model/intro_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Intro_Screen extends StatefulWidget {
  const Intro_Screen({super.key});

  @override
  State<Intro_Screen> createState() => _Intro_ScreenState();
}

class _Intro_ScreenState extends State<Intro_Screen> {
  final _controller = PageController();
  bool _lastpage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(),
        child: SafeArea(
          child: Stack(
            children: [
              PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    if (value == 2) {
                      _lastpage = true;
                    } else {
                      _lastpage = false;
                    }
                  });
                },
                controller: _controller,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      const Spacer(
                        flex: 1,
                      ),
                      SvgPicture.asset(
                        IntroModel.IntroData(context)[index].Path,
                        height: MediaQuery.of(context).size.width - 50,
                      ),
                      const Spacer(
                        flex: 1,
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
                        flex: 1,
                      ),
                    ],
                  );
                },
                itemCount: IntroModel.IntroData(context).length,
              ),
              _lastpage
                  ? Positioned(
                      bottom: 10,
                      child: Padding(
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
                            fixedSize: Size(
                                MediaQuery.of(context).size.width - 16, 50),
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
                    )
                  : Positioned(
                      bottom: 7,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: EdgeInsets.only(
                            right: IsArabic() ? 10 : 0,
                            left: IsArabic() ? 0 : 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SmoothPageIndicator(
                                onDotClicked: (index) =>
                                    _controller.animateToPage(
                                  index,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeOut,
                                ),
                                controller: _controller,
                                count: IntroModel.IntroData(context).length,
                                effect: JumpingDotEffect(
                                  dotHeight: 7,
                                  dotWidth: 7,
                                  activeDotColor: btnColor,
                                  dotColor: SubTextColor,
                                ),
                              ),
                              Text(
                                S.of(context).intro_5,
                                style: TextStyle(
                                  color: SubTextColor,
                                  fontFamily: SubFont,
                                  fontSize: 18,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  _controller.nextPage(
                                      duration:
                                          const Duration(milliseconds: 300),
                                      curve: Curves.easeOut);
                                },
                                icon: Icon(
                                  IsArabic()
                                      ? Iconsax.arrow_left
                                      : Iconsax.arrow_right_1,
                                  color: btnColor,
                                  size: 27,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
              _lastpage
                  ? const Text("")
                  : Positioned(
                      top: 0,
                      left: IsArabic() ? 0 : null,
                      right: IsArabic() ? null : 0,
                      child: TextButton(
                        onPressed: () {
                          _controller.animateToPage(
                            2,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeOut,
                          );
                        },
                        child: Text(
                          S.of(context).intro_3,
                          style: TextStyle(
                            fontFamily: SubFont,
                            fontSize: 18,
                            color: SubTextColor,
                          ),
                        ),
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
