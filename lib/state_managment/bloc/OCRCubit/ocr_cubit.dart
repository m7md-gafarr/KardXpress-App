import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kardxpress_app/generated/l10n.dart';
import 'package:kardxpress_app/server/ocr.dart';

part 'ocr_state.dart';

class OcrCubit extends Cubit<OcrState> {
  OcrCubit(this.ocr) : super(OcrInitial());
  final OCRService ocr;

  GetNumber(
      {required String Code,
      required ImageSource source,
      required int CardCount,
      required BuildContext context,
      required String errorMessage}) async {
    emit(OcrLoading());
    try {
      ocr.pickImage(
        Code: Code,
        source: source,
        toolbarTitle: S.of(context).cropImage,
        CardCount: CardCount,
        onTextDetected: (p0) {
          if (p0 != "") {
            emit(OcrSuccess());
          } else if (p0 == "") {
            if (source == ImageSource.camera) {
              emit(Ocrfailure(message: errorMessage));
            } else if (source == ImageSource.gallery) {
              emit(Ocrfailure(message: errorMessage));
            }
          }
        },
      );
    } catch (e) {
      emit(Ocrfailure(message: e.toString()));
    }
  }
}
