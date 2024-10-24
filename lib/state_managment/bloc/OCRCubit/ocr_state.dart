part of 'ocr_cubit.dart';

@immutable
sealed class OcrState {}

final class OcrInitial extends OcrState {}

final class OcrLoading extends OcrState {}

final class OcrSuccess extends OcrState {}

final class Ocrfailure extends OcrState {
  String message;
  Ocrfailure({required this.message});
}

// final class OcrfailureGallary extends OcrState {
//   String message;
//   OcrfailureGallary({required this.message});
// }

// final class OcrfailureCamera extends OcrState {
//   String message;
//   OcrfailureCamera({required this.message});
// }
