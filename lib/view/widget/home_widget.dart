import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kardxpress_app/constant/constant.dart';
import 'package:kardxpress_app/generated/l10n.dart';
import 'package:kardxpress_app/model/companys_model.dart';
import 'package:kardxpress_app/state_managment/bloc/OCRCubit/ocr_cubit.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Align(
                  alignment:
                      IsArabic() ? Alignment.centerRight : Alignment.centerLeft,
                  child: Text(
                    S.of(context).name,
                    style: TextStyle(
                      fontFamily: PrimaryFont,
                      fontSize: 22,
                      color: btnColor,
                    ),
                  ),
                ),
                Align(
                  alignment:
                      IsArabic() ? Alignment.centerRight : Alignment.centerLeft,
                  child: Text(
                    S.of(context).home_4_1,
                    style: TextStyle(
                      fontFamily: SubFont,
                      fontSize: 20,
                      color: TextColor,
                    ),
                  ),
                ),
                Align(
                  alignment:
                      IsArabic() ? Alignment.centerRight : Alignment.centerLeft,
                  child: Text(
                    "${S.of(context).home_4_2} EG",
                    style: TextStyle(
                      fontFamily: SubFont,
                      fontSize: 18,
                      color: SubTextColor,
                    ),
                  ),
                ),
                Column(
                  children: CompanysModel.CompList(context).map((company) {
                    return Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: InkWell(
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => SimpleDialog(
                              title: Text(
                                S.of(context).home_2_1,
                                style: TextStyle(
                                  fontFamily: SubFont,
                                  fontSize: 22,
                                  color: TextColor,
                                ),
                              ),
                              children: [
                                ListTile(
                                  onTap: () {
                                    context.read<OcrCubit>().GetNumber(
                                        errorMessage: S.of(context).home_3_2_1,
                                        Code: company.Code,
                                        source: ImageSource.camera);
                                    Navigator.pop(context);
                                  },
                                  leading: Icon(
                                    Iconsax.camera,
                                    color: btnColor,
                                  ),
                                  title: Text(
                                    S.of(context).home_2_2,
                                    style: TextStyle(
                                      fontFamily: SubFont,
                                      fontSize: 18,
                                      color: TextColor,
                                    ),
                                  ),
                                ),
                                ListTile(
                                  onTap: () {
                                    context.read<OcrCubit>().GetNumber(
                                        errorMessage: S.of(context).home_3_2_2,
                                        Code: company.Code,
                                        source: ImageSource.gallery);
                                    Navigator.pop(context);
                                  },
                                  leading: Icon(
                                    Iconsax.gallery,
                                    color: btnColor,
                                  ),
                                  title: Text(
                                    S.of(context).home_2_3,
                                    style: TextStyle(
                                      fontFamily: SubFont,
                                      fontSize: 18,
                                      color: TextColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: SubbackColor,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(15)),
                          ),
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                company.text,
                                style: TextStyle(
                                  fontFamily: SubFont,
                                  fontSize: 22,
                                  color: TextColor,
                                ),
                              ),
                              SvgPicture.asset(
                                company.Path,
                                height:
                                    MediaQuery.of(context).size.width / 2 - 100,
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
                // Expanded(
                //   child: GridView.count(
                //     physics: const BouncingScrollPhysics(),
                //     crossAxisCount: 2,
                //     children: CompanysModel.CompList(context).map((company) {
                //       return Padding(
                //         padding: const EdgeInsets.all(15.0),
                //         child: InkWell(
                //           focusColor: Colors.transparent,
                //           hoverColor: Colors.transparent,
                //           splashColor: Colors.transparent,
                //           highlightColor: Colors.transparent,
                //           onTap: () {
                //             showDialog(
                //               context: context,
                //               builder: (context) => SimpleDialog(
                //                 title: Text(
                //                   S.of(context).home_2_1,
                //                   style: TextStyle(
                //                     fontFamily: SubFont,
                //                     fontSize: 20,
                //                     color: TextColor,
                //                   ),
                //                 ),
                //                 children: [
                //                   ListTile(
                //                     onTap: () {
                //                       context.read<OcrCubit>().GetNumber(
                //                           errorMessage: S.of(context).home_3_2_1,
                //                           Code: company.Code,
                //                           source: ImageSource.camera);
                //                       Navigator.pop(context);
                //                     },
                //                     leading: Icon(
                //                       Iconsax.camera,
                //                       color: btnColor,
                //                     ),
                //                     title: Text(
                //                       S.of(context).home_2_2,
                //                       style: TextStyle(
                //                         fontFamily: SubFont,
                //                         fontSize: 18,
                //                         color: TextColor,
                //                       ),
                //                     ),
                //                   ),
                //                   ListTile(
                //                     onTap: () {
                //                       context.read<OcrCubit>().GetNumber(
                //                           errorMessage: S.of(context).home_3_2_2,
                //                           Code: company.Code,
                //                           source: ImageSource.gallery);
                //                       Navigator.pop(context);
                //                     },
                //                     leading: Icon(
                //                       Iconsax.gallery,
                //                       color: btnColor,
                //                     ),
                //                     title: Text(
                //                       S.of(context).setting_5,
                //                       style: TextStyle(
                //                         fontFamily: SubFont,
                //                         fontSize: 22,
                //                         color: TextColor,
                //                       ),
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             );
                //           },
                //           child: Container(
                //             decoration: BoxDecoration(
                //               color: SubbackColor,
                //               borderRadius:
                //                   const BorderRadius.all(Radius.circular(15)),
                //             ),
                //             padding: const EdgeInsets.all(15),
                //             child: SvgPicture.asset(
                //               company.Path,
                //               height: MediaQuery.of(context).size.width / 2 - 70,
                //             ),
                //           ),
                //         ),
                //       );
                //     }).toList(),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
