import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kardxpress_app/generated/l10n.dart';
import 'package:kardxpress_app/server/ocr.dart';
import 'package:meta/meta.dart';

part 'ocr_state.dart';

class OcrCubit extends Cubit<OcrState> {
  OcrCubit(this.ocr) : super(OcrInitial());
  final OCRService ocr;

  GetNumber({
    required String Code,
    required ImageSource source,
    required String errorMessage,
  }) {
    emit(OcrLoading());
    try {
      ocr.pickImage(
        Code: Code,
        onTextDetected: (p0) {
          if (p0 != "")
            emit(OcrSuccess());
          else
            emit(Ocrfailure(message: errorMessage));
        },
        source: source,
      );
    } catch (e) {
      emit(Ocrfailure(message: e.toString()));
    }
  }
}
