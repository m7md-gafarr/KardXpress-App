import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kardxpress_app/constant/constant.dart';
import 'package:kardxpress_app/generated/l10n.dart';
import 'package:kardxpress_app/state_managment/bloc/OCRCubit/ocr_cubit.dart';
import 'package:kardxpress_app/state_managment/provider/indexscreens.dart';
import 'package:kardxpress_app/view/widget/bottonnavbar_widget.dart';
import 'package:provider/provider.dart';
import '../widget/home_widget.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<OcrCubit, OcrState>(
      listener: (context, state) {
        if (state is Ocrfailure) {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text(
                S.of(context).home_3_1,
                style: TextStyle(
                  fontFamily: SubFont,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: errorColor,
                ),
              ),
              content: Text(
                state.message,
                style: TextStyle(
                  fontFamily: SubFont,
                  fontSize: 18,
                  color: errorColor,
                ),
              ),
              actions: [
                OutlinedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      S.of(context).home_3_3,
                      style: TextStyle(
                        fontFamily: SubFont,
                        fontSize: 18,
                        color: TextColor,
                      ),
                    ))
              ],
            ),
          );
        }
      },
      child: Scaffold(
          backgroundColor: backColor,
          body: Consumer<Indexscreens>(
            builder: (context, myType, child) {
              return myType.Screens[context.read<Indexscreens>().index];
            },
          ),
          bottomNavigationBar: const BottomNavbarWidget()),
    );
  }
}
