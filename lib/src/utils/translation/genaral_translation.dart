import 'package:flutter/material.dart';
import 'package:super_baraem_kidergarten/src/utils/utils.dart';

class Translations {
  static Map<String, String> get genaralTranslation {
    final locale = Localizations.localeOf(navigatorKey.currentContext!);

    return locale.languageCode == 'ar' ? keys['ar_IQ']! : keys['ar_IQ']!;
  }

  static Map<String, Map<String, String>> get keys => {
    'en_US': {
      'HOME': 'Home',
      'RATE': 'Rate',
      "IN_OUT": "in and out",
      'EXAMINATION': 'Examination',
      'PROFILE': 'Profile',
      'USERNAME': 'Username',
      'PASSWORD': 'Password',
      'CONTACT US': 'Contact us',
      'ADS': 'Ads',
      'LANGUAGE': 'Language',
      'PLEASE TAKE YOUR EMAIL AND PASSWORD FROM KINDERGARTEN':
          'Please take your email and password from kindergarten',
      'LOGIN BUTTON': 'Login',
      'ERROR': 'Error',
      "NOTIFICATION": "Notification",
      "MONTESSORI": "Montessori",
      "OCCASIONS": "Occasions",
      "TEACHING STRATEGY": "Teaching strategy",
      "ACTIVITIES": "Activities",
      "MONTHLY MESSAGES": "Monthly messages",
      "OPEN URL": "open website",
      "REGION": "Region",
      "STUDENT INFO.": "Student Info.",
      "BIRTHDAY": "Birthday",
      "PHONE1": "phone1",
      "PHONE2": "phone2",
      "PHONE3": "phone3",
      "PHONE4": "phone4",
      "PHONENUMBERS": "Phone numbers",
      "ADDRESS": "Address",
      "ALLEY": "alley",
      "CITY": "city",

      "THENEARESTPOINT": "Nearest point",
      "DOCUMENTS": "Documents",
      "CHOICE REGION": "choice region",
      "SEND": "send",
      "PLEASE CHOICE ALL DOCUMENTS": "please choice all documents",
      "PLEASE FILL ALL FIELD": "please fill all field",
      "SUCCESS": "Success",
      "FILE UPLOADED SUCCESS": "File uploaded success",
      "FINGER PRINT": "Finger print",
      "INSTALLMENT": "Installment",
      "NO DATA": "NO Data",
      "BABY PICTURE": "Baby Picture",
      "FATHER ID": "Father ID",
      "MOTHER ID": "Mother ID",
      "ASSISTANCE ID": "Assistance ID",
      "GPS": "GPS",
      "FAIL": "Fail",
      "SERVER_ERROR": "Server Error",
      "BACK": "Back",
      "INTERNET_ERROR_MSG": "Internet connection error",
      "CONFIRM": "Confirm",
    },
    'ar_IQ': {
      'HOME': 'الرئيسية',
      'RATE': 'التقييم',
      "IN_OUT": "الدخول والخروج",
      'EXAMINATION': 'الامتحانات',
      'PROFILE': 'الملف الشخصي',
      'USERNAME': 'اسم المستخدم',
      'PASSWORD': 'الرقم السري',
      'CONTACT US': 'اتصل بنا',
      'ADS': 'الاعلانات',
      'LANGUAGE': 'اللغة',
      'PLEASE TAKE YOUR EMAIL AND PASSWORD FROM KINDERGARTEN':
          'ان لم تمتلك حساب قم باخذه من الروضة',
      'LOGIN BUTTON': 'تسجيل الدخول',
      'ERROR': 'خطأ',
      "NOTIFICATION": "الاشعارات",
      "MONTESSORI": "مونتيسوري",
      "OCCASIONS": "المناسبات",
      "TEACHING STRATEGY": "استراتيجية التدريس",
      "ACTIVITIES": "الانشطة",
      "MONTHLY MESSAGES": "الرسائل الشهرية",
      "OPEN URL": "فتح الرابط",
      "REGION": "المنطقة",
      "STUDENT INFO.": "معلومات الطالب",
      "BIRTHDAY": "تاريخ الميلاد",
      "PHONE1": "هاتف 1",
      "PHONE2": "هاتف 2",
      "PHONE3": "هاتف 3",
      "PHONE4": "هاتف 4",
      "PHONENUMBERS": "ارقام الهواتف",
      "ADDRESS": "العنوان",
      "ALLEY": "الزقاق",
      "CITY": "المحلة",

      "THENEARESTPOINT": "علامة دالة",
      "DOCUMENTS": "المستمسكات",
      "CHOICE REGION": "اختر المنطقة",
      "SEND": "ارسال",
      "PLEASE CHOICE ALL DOCUMENTS": "الرجاء اختيار المستمسكات لرفعها",
      "PLEASE FILL ALL FIELD": "الرجاء ملئ كل الحقول",
      "SUCCESS": "نجاح",
      "FILE UPLOADED SUCCESS": "تم رفع الملفات بنجاح",
      "FINGER PRINT": "البصمة",
      "INSTALLMENT": "الاقساط",
      "NO DATA": "لاتوجد بيانات",
      "BABY PICTURE": "صورة الطفل",
      "FATHER ID": "هوية الاب",
      "MOTHER ID": "هوية الام",
      "ASSISTANCE ID": "هوية المخول",
      "GPS": "الخطوط",
      "FAIL": "فشل",
      "SERVER_ERROR": "خطأ في الخادم",
      "BACK": "رجوع",
      "INTERNET_ERROR_MSG": "خطأ في الاتصال بالانترنت",
      "CONFIRM": "تأكيد",
    },
  };
}
