import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../generated/l10n.dart';
import 'package:flutter/services.dart' show ByteData, Uint8List, rootBundle;

/// =====================================> Launch Phone
Future<void> launchUrl_({
  required String phoneNumber,
  required String countryKey,
}) async {
  String fullPhoneNumber = '$countryKey$phoneNumber'; // Replace with the desired phone number
  String message = 'Hello, this is a test message!'; // Replace with the desired message
  String url = 'https://wa.me/$fullPhoneNumber?text=${Uri.parse(message)}';

  final Uri uri = Uri.parse(url);

  bool success = await launchUrl(
    uri,
    mode: LaunchMode.externalApplication,
  );
  if (!success) {
    throw 'Could not launch $url';
  }
}

/// =====================================> Launch Phone

Future<void> launchPhone_({
  required String phoneNumber,
}) async {
  String url = 'tel:$phoneNumber';

  final Uri uri = Uri.parse(url);

  bool success = await launchUrl(
    uri,
    mode: LaunchMode.externalApplication,
  );
  if (!success) {
    throw 'Could not launch $url';
  }
}

/// =====================================> Date Format




bool isArabic(int codeUnit) {
  return (codeUnit >= 0x0600 && codeUnit <= 0x06FF) || // Arabic
      (codeUnit >= 0x0750 && codeUnit <= 0x077F) || // Arabic Supplement
      (codeUnit >= 0xFB50 && codeUnit <= 0xFDFF) || // Arabic Presentation Forms-A
      (codeUnit >= 0xFE70 && codeUnit <= 0xFEFF); // Arabic Presentation Forms-B
}


/// =================================================> Load Image

Future<File> loadImageFromAssets(String assetPath) async {
  ByteData imageData = await rootBundle.load(assetPath);
  Uint8List imageBytes = imageData.buffer.asUint8List();

  Directory tempDir = await getTemporaryDirectory();
  String tempFilePath = '${tempDir.path}/${DateTime.now().millisecondsSinceEpoch}.png';

  File tempFile = File(tempFilePath);
  await tempFile.writeAsBytes(imageBytes);

  return tempFile;
}


class Utils {
  static List<Widget> modelBuilder<M>(
      List<M> models, Widget Function(int index, M model) builder) =>
      models
          .asMap()
          .map<int, Widget>(
              (index, model) => MapEntry(index, builder(index, model)))
          .values
          .toList();
}
