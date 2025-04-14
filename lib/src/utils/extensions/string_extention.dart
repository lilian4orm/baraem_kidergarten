import 'dart:convert';
import 'dart:typed_data';

import 'package:intl/intl.dart';
import 'package:super_baraem_kidergarten/src/utils/translation/genaral_translation.dart';
import 'package:super_baraem_kidergarten/src/utils/validation.dart';

extension KQ on String {
  String cleanAndValidateArabicText() {
    // Regex to match only valid Arabic characters and spaces
    final regex = RegExp(r'[^ء-يپچڤگڎژڕڵێۆەووھ\s]');

    // Remove invalid characters
    String cleanedText = replaceAll(regex, '');

    // Update the controller with the cleaned text
    return cleanedText;
  }

  String tr() {
    return Translations.genaralTranslation[toUpperCase()] ?? toUpperCase();
  }

  String toEnglishNumber() {
    return getEnglishNumber(this);
  }

  bool get isValidUUID {
    final RegExp uuidRegExp = RegExp(
      r'^[{]?([0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-5][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12})[}]?$',
    );
    return uuidRegExp.hasMatch(this);
  }

  String get arabicNumber {
    const english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
    const farsi = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];
    String text = this;
    for (int i = 0; i < english.length; i++) {
      text = text.replaceAll(english[i], farsi[i]);
    }
    return text;
  }

  String toDate(local) {
    try {
      final format2 = DateFormat('E d MMM yyyy , h:mm a', local);
      final d = DateTime.parse(this).toLocal();
      final date = format2.format(d);
      return date;
    } catch (e) {
      return this;
    }
  }

  String toPrice() {
    if (length > 2) {
      var value = this;
      value = value.replaceAll(RegExp(r'\D'), '');
      value = value.replaceAll(RegExp(r'\B(?=(\d{3})+(?!\d))'), ',');
      return "$value د.ع";
    }
    return this;
  }

  String clearText() {
    if (replaceAll(" ", "").isNotEmpty) {
      return this;
    }
    return "";
  }

  double? getnum() {
    String? num = replaceAll(RegExp(r'[^0-9]'), '');

    try {
      return num.isEmpty ? null : double.tryParse(num);
    } catch (e) {
      return null;
    }
  }

  String? getTextOnly() =>
      isEmpty ? null : replaceAll(RegExp(r'[^a-zء-ي]'), '');

  Uint8List? toUint8List() {
    return base64Decode(this);
  }
}

String getTimeFormat({required int minut, required int seconds}) {
  String minuteLeft =
      minut.toString().length < 2 ? "0$minut" : minut.toString();

  String secondsLeft =
      seconds.toString().length < 2 ? "0$seconds" : seconds.toString();

  String result = "$minuteLeft:$secondsLeft";
  return result;
}

extension ListOperation on Map<dynamic, dynamic>? {
  String getContent(String key) {
    return this == null || !this!.containsKey(key)
        ? Translations.genaralTranslation[key.toUpperCase()] ?? key
        : this![key];
  }
}
