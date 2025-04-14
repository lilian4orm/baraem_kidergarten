import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:path_provider/path_provider.dart';
import 'package:super_baraem_kidergarten/src/core/enums/genaric_enums.dart';
import 'package:super_baraem_kidergarten/src/core/network/dio_log_interceptor.dart';
import 'package:super_baraem_kidergarten/src/core/widgets/tm_button.dart';
import 'package:super_baraem_kidergarten/src/utils/extensions/extention.dart';

import 'constants/const.dart';

go(Widget page, {int? milliseconds, TransitionType? transitionType}) async {
  return await navigatorKey.currentState!.push(
    PageRouteBuilder(
      pageBuilder: (context, animation, anotherAnimation) {
        return page;
      },
      transitionDuration: Duration(milliseconds: milliseconds ?? 500),
      transitionsBuilder: (context, animation, anotherAnimation, child) {
        return getTransition(animation, child, transitionType);
      },
    ),
  );
}

Future<dynamic> goReplacemnt(
  Widget page, {
  int? milliseconds,
  TransitionType? transitionType,
}) async {
  return navigatorKey.currentState!.pushReplacement(
    PageRouteBuilder(
      pageBuilder: (context, animation, anotherAnimation) {
        return page;
      },
      transitionDuration: Duration(milliseconds: milliseconds ?? 500),
      transitionsBuilder: (context, animation, anotherAnimation, child) {
        return getTransition(animation, child, transitionType);
      },
    ),
  );
}

goAndRemoveUntil(
  Widget page, {
  int? milliseconds,
  TransitionType? transitionType,
}) {
  navigatorKey.currentState!.pushAndRemoveUntil(
    PageRouteBuilder(
      pageBuilder: (context, animation, anotherAnimation) {
        return page;
      },
      transitionDuration: Duration(milliseconds: milliseconds ?? 500),
      transitionsBuilder: (context, animation, anotherAnimation, child) {
        return getTransition(animation, child, transitionType);
      },
    ),
    (route) => false,
  );
}

Widget getTransition(
  Animation<double> animation,
  Widget child,
  TransitionType? transitionType,
) {
  switch (transitionType) {
    case TransitionType.slideTop:
      animation = CurvedAnimation(curve: Curves.easeInOut, parent: animation);
      return SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(0, 1),
          end: Offset.zero,
        ).animate(animation),
        child: child,
      );
    case TransitionType.fade:
      animation = CurvedAnimation(curve: Curves.easeInOut, parent: animation);
      return FadeTransition(opacity: animation, child: child);

    case TransitionType.slideLeft:
      animation = CurvedAnimation(curve: Curves.easeInOut, parent: animation);
      return SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(1, 0),
          end: Offset.zero,
        ).animate(animation),
        child: child,
      );

    case TransitionType.slideRight:
      animation = CurvedAnimation(curve: Curves.easeInOut, parent: animation);
      return SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(-1, 0),
          end: Offset.zero,
        ).animate(animation),
        child: child,
      );
    default:
      animation = CurvedAnimation(curve: Curves.easeInOut, parent: animation);
      return SlideTransition(
        position: Tween<Offset>(
          begin: const Offset(1, 0),
          end: Offset.zero,
        ).animate(animation),
        child: child,
      );
  }
}

Future<void> datePicker(
  TextEditingController controller,
  int subtractYear,
  String? initDateTime, [
  Function(String)? onSelect,
  DateTime? maxDateTime,
  DateTime? minDateTime,
]) async {
  DateTime? date;
  late DateTime initDate;

  if (initDateTime != null && initDateTime.isNotEmpty) {
    initDate = DateTime.parse(
      initDateTime.replaceAll("T", " ").replaceAll("Z", ""),
    );
  } else {
    initDate = DateTime.now();
  }

  showCupertinoModalPopup(
    context: navigatorKey.currentContext!,
    builder:
        (_) => Container(
          //  margin: EdgeInsets.all(16),
          height: 260,
          padding: const EdgeInsets.only(top: 8),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(kDefaultSpacing),
              topRight: Radius.circular(kDefaultSpacing),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  const SizedBox(width: 8),
                  SizedBox(
                    width: 100,
                    height: 40,
                    child: TMButton(
                      title: "choose".tr(),
                      onPressed: () {
                        if (date != null) {
                          controller.text = date.toString().split(" ")[0];
                        } else {
                          controller.text = initDate.toString().split(" ")[0];
                        }
                        onSelect?.call(controller.text);
                        Navigator.pop(navigatorKey.currentContext!);
                      },
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(FeatherIcons.x),
                    onPressed:
                        () => Navigator.pop(navigatorKey.currentContext!),
                  ),
                ],
              ),
              Expanded(
                child: CupertinoTheme(
                  data: const CupertinoThemeData(
                    textTheme: CupertinoTextThemeData(
                      dateTimePickerTextStyle: TextStyle(
                        letterSpacing: 0.2,
                        fontSize: 18,
                        color: Colors.black,
                        fontFamily: 'Somar',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    applyThemeToAll: true,
                  ),
                  child: CupertinoDatePicker(
                    mode: CupertinoDatePickerMode.date,
                    initialDateTime: initDate,
                    minimumDate: minDateTime ?? DateTime(1900),
                    minimumYear: minDateTime != null ? minDateTime.year : 1900,
                    maximumYear:
                        maxDateTime != null
                            ? maxDateTime.year
                            : DateTime.now().year,
                    itemExtent: 35,
                    onDateTimeChanged: (val) {
                      date = val;
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
  );
}

Future<bool> checkConnection() async {
  try {
    Dio dio;
    dio = Dio()..interceptors.add(DioLogger());

    final head = await dio.head('https://www.google.com');
    L.info(msg: head.statusCode);
    return true;
  } catch (e) {
    return false;
  }
}

Future<XFile> compressAndGetFile(File file, {int quality = 80}) async {
  final dir = await getTemporaryDirectory();
  String extension = file.path.split('.').last;
  final targetPath =
      '${dir.absolute.path}/${DateTime.now().microsecondsSinceEpoch}.$extension';
  var decodedImage = await decodeImageFromList(file.readAsBytesSync());

  var result = await FlutterImageCompress.compressAndGetFile(
    file.absolute.path,
    targetPath,
    minHeight: decodedImage.height * quality ~/ 100,
    minWidth: (decodedImage.width * quality ~/ 100).toInt(),
    quality: quality,
  );

  return result!;
}
