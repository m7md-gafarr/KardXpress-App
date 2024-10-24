import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kardxpress_app/constant/constant.dart';
import 'package:url_launcher/url_launcher.dart';

class OCRService {
  String recognizedText = '';
  final ImagePicker _picker = ImagePicker();

  Future<void> pickImage({
    required Function(String) onTextDetected,
    required String Code,
    required ImageSource source,
  }) async {
    final XFile? image = await _picker.pickImage(source: source);
    if (image != null) _detectTextFromImage(image.path, onTextDetected, Code);

    // if (image != null) {
    //   File? croppedImage = await _cropImage(image.path);
    //   if (croppedImage != null) {
    //     await _detectTextFromImage(croppedImage.path, onTextDetected, Code);
    //   }
    // }
  }

  Future<File?> _cropImage(String imagePath) async {
    CroppedFile? croppedFile = await ImageCropper().cropImage(
      sourcePath: imagePath,
      aspectRatio: const CropAspectRatio(ratioX: 6, ratioY: 1),
      uiSettings: [
        AndroidUiSettings(
          toolbarTitle: 'Crop Number',
          toolbarColor: btnColor,
          toolbarWidgetColor: Colors.white,
          aspectRatioPresets: [
            CropAspectRatioPreset.original,
            CropAspectRatioPreset.square,
          ],
        ),
        IOSUiSettings(
          title: 'Cropper',
          aspectRatioPresets: [
            CropAspectRatioPreset.original,
            CropAspectRatioPreset.square,
          ],
        ),
      ],
    );

    return croppedFile != null ? File(croppedFile.path) : null;
  }

  Future<void> _detectTextFromImage(
    String imagePath,
    Function(String) onTextDetected,
    String Code,
  ) async {
    final inputImage = InputImage.fromFilePath(imagePath);

    final textRecognizer = TextRecognizer(script: TextRecognitionScript.latin);
    final RecognizedText recognizedTextResult =
        await textRecognizer.processImage(inputImage);
    String recognizedText = recognizedTextResult.text;

    String cardNumber = _extractCardNumber(recognizedText, Code);
    onTextDetected(cardNumber);

    textRecognizer.close();

    if (cardNumber != "") _callNumber(cardNumber, Code);
  }

  String _extractCardNumber(
    String text,
    String Code,
  ) {
    final RegExp regex;
    if (Code == "*556*")
      regex = RegExp(r'\b(?:\d{3}[- ]?){4}\d{3}\b');
    else
      regex = RegExp(r'\b(?:\d{4}[- ]?){3}\d{4}\b');
    final Match? match = regex.firstMatch(text);
    return match?.group(0)?.replaceAll(RegExp(r'[- ]'), '') ?? '';
  }

  Future<void> _callNumber(String number, String Code) async {
    final Uri phoneUri = Uri(
      scheme: 'tel',
      path: "$Code$number#",
    );

    if (await canLaunch(phoneUri.toString())) {
      await launch(phoneUri.toString());
    } else {
      throw 'Could not launch $phoneUri';
    }
  }
}
