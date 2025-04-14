import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:super_baraem_kidergarten/src/utils/extensions/extention.dart';

const appName = "روضة البراعم";
const appKeyStorage = "super_baraem_kidergarten_app_user_storage";
const kDefaultPadding = 16.0;
const kDefaultSpacing = 12.0;
const kDefaultPadding10 = 12.0;
const kDefaultTextSpacing = 4.0;
const kDefaultBorderRadius = 16.0;
const kDefaultDuration = 400;

const SIZE_MB = 1024 * 1024;
const PER_PAGE = 15;
const curveType = Curves.decelerate;
const curveType1 = Curves.bounceIn;
const kFigmaScale = 1.4;
final globalScrollController = ScrollController();
final extraInfoFormKey = GlobalKey<FormState>();
final navigatorKey = GlobalKey<NavigatorState>();
PackageInfo? packageInfo;

String moneyFormat(String price) {
  if (price.length > 2) {
    var value = price.toEnglishNumber();
    value = value.replaceAll(RegExp(r'\D'), '');
    value = value.replaceAll(RegExp(r'\B(?=(\d{3})+(?!\d))'), ',');
    return value.arabicNumber;
  }
  return price;
}

String toPrise(String text) {
  String patttern = r'^[٠-٩]+$';
  RegExp regExp = RegExp(patttern);
  var isAr = regExp.hasMatch(text.replaceAll(",", ""));
  if (text.length < 3) {
    return text;
  }

  var value = text.toEnglishNumber();
  value = value.replaceAll(RegExp(r'\D'), '');
  value = value.replaceAll(RegExp(r'\B(?=(\d{3})+(?!\d))'), ',');

  return isAr ? value.arabicNumber : value;
}

final oCcy = NumberFormat("#,##0.00", "ar_SA");

const hourArry = [
  "الثانية عشرة صباحاً",
  " الواحدة صباحاً",
  "الثانية صباحاً",
  "الثالثة صباحاً",
  "الرابعة صباحاً",
  "الخامسة صباحاً",
  "السادسة صباحاً",
  "السابعة صباحاً",
  "الثامنة صباحاً",
  "التاسعة صباحاً",
  "العاشرة صباحاً",
  "الحادية عشرة صباحاً",
  "الثانية عشرة  مساءً",
  " الواحدة  مساءً",
  "الثانية  مساءً",
  "الثالثة  مساءً",
  "الرابعة  مساءً",
  "الخامسة  مساءً",
  "السادسة  مساءً",
  "السابعة  مساءً",
  "الثامنة  مساءً",
  "التاسعة  مساءً",
  "العاشرة  مساءً",
  "الحادية عشرة  مساءً",
];
