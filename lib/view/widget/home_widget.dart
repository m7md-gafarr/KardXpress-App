import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kardxpress_app/constant/constant.dart';
import 'package:kardxpress_app/generated/l10n.dart';
import 'package:kardxpress_app/model/companys_model.dart';

import 'package:kardxpress_app/state_managment/bloc/OCRCubit/ocr_cubit.dart';

import 'package:kardxpress_app/view/widget/Company_widget.dart';

class HomeWidget extends StatelessWidget {
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
                      fontSize: 23,
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
                Column(
                  children: CompanysModel.CompList(context).map((company) {
                    return Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: CompanyWidget(
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
                                          errorMessage:
                                              S.of(context).home_3_2_1,
                                          context: context,
                                          Code: company.Code,
                                          source: ImageSource.camera,
                                          CardCount: company.CardCount,
                                        );
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
                                          context: context,
                                          errorMessage:
                                              S.of(context).home_3_2_2,
                                          Code: company.Code,
                                          source: ImageSource.gallery,
                                          CardCount: company.CardCount,
                                        );
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
                        text: company.text,
                        Path: company.Path,
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
