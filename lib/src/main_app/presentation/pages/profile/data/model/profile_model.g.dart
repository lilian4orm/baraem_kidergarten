// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileResponseImpl _$$ProfileResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileResponseImpl(
      error: json['error'] as bool,
      results: ProfileModel.fromJson(json['results'] as Map<String, dynamic>),
      contentUrl: json['content_url'] as String?,
    );

Map<String, dynamic> _$$ProfileResponseImplToJson(
        _$ProfileResponseImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'results': instance.results,
      'content_url': instance.contentUrl,
    };

_$ProfileModelImpl _$$ProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfileModelImpl(
      account: AccountData.fromJson(json['account'] as Map<String, dynamic>),
      setting: (json['setting'] as List<dynamic>)
          .map((e) => Setting.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProfileModelImplToJson(_$ProfileModelImpl instance) =>
    <String, dynamic>{
      'account': instance.account,
      'setting': instance.setting,
    };

_$AccountDataImpl _$$AccountDataImplFromJson(Map<String, dynamic> json) =>
    _$AccountDataImpl(
      id: json['_id'] as String?,
      v: (json['__v'] as num?)?.toInt(),
      account_name: json['account_name'] as String,
      account_nearest_point: json['account_nearest_point'] as String?,
      account_area: json['account_area'] as String?,
      account_alley: json['account_alley'] as String?,
      account_mobile: json['account_mobile'] as String?,
      account_mobile_father: json['account_mobile_father'] as String?,
      account_mobile_mother: json['account_mobile_mother'] as String?,
      account_division: (json['account_division'] as List<dynamic>?)
          ?.map((e) => Division.fromJson(e as Map<String, dynamic>))
          .toList(),
      account_gender: json['account_gender'] as String?,
      account_max_vacation: (json['account_max_vacation'] as num?)?.toInt(),
      isAccountCanSendNotification:
          json['isAccountCanSendNotification'] as bool?,
      account_document: json['account_document'] == null
          ? null
          : AccountDocument.fromJson(
              json['account_document'] as Map<String, dynamic>),
      account_address: json['account_address'] as String?,
      account_img: json['account_img'] as String?,
      account_start_date: json['account_start_date'],
      account_notification_register: json['account_notification_register'],
      account_zoom: json['account_zoom'],
      account_salary: json['account_salary'],
      account_delete_reason: json['account_delete_reason'],
      account_card_number: json['account_card_number'],
      account_car_color: json['account_car_color'],
      account_car_number: json['account_car_number'],
      is_deleted_from_student_has_no_bills:
          json['is_deleted_from_student_has_no_bills'] as bool?,
      account_subject: json['account_subject'],
      isAccountUploadedFile: json['isAccountUploadedFile'] as bool?,
      account_registration_number: json['account_registration_number'],
      created_at: (json['created_at'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      school: json['school'] == null
          ? null
          : School.fromJson(json['school'] as Map<String, dynamic>),
      account_division_filter_year:
          (json['account_division_filter_year'] as List<dynamic>?)
              ?.map((e) => Division.fromJson(e as Map<String, dynamic>))
              .toList(),
      account_division_current: json['account_division_current'] == null
          ? null
          : Division.fromJson(
              json['account_division_current'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AccountDataImplToJson(_$AccountDataImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      '__v': instance.v,
      'account_name': instance.account_name,
      'account_nearest_point': instance.account_nearest_point,
      'account_area': instance.account_area,
      'account_alley': instance.account_alley,
      'account_mobile': instance.account_mobile,
      'account_mobile_father': instance.account_mobile_father,
      'account_mobile_mother': instance.account_mobile_mother,
      'account_division': instance.account_division,
      'account_gender': instance.account_gender,
      'account_max_vacation': instance.account_max_vacation,
      'isAccountCanSendNotification': instance.isAccountCanSendNotification,
      'account_document': instance.account_document,
      'account_address': instance.account_address,
      'account_img': instance.account_img,
      'account_start_date': instance.account_start_date,
      'account_notification_register': instance.account_notification_register,
      'account_zoom': instance.account_zoom,
      'account_salary': instance.account_salary,
      'account_delete_reason': instance.account_delete_reason,
      'account_card_number': instance.account_card_number,
      'account_car_color': instance.account_car_color,
      'account_car_number': instance.account_car_number,
      'is_deleted_from_student_has_no_bills':
          instance.is_deleted_from_student_has_no_bills,
      'account_subject': instance.account_subject,
      'isAccountUploadedFile': instance.isAccountUploadedFile,
      'account_registration_number': instance.account_registration_number,
      'created_at': instance.created_at,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'school': instance.school,
      'account_division_filter_year': instance.account_division_filter_year,
      'account_division_current': instance.account_division_current,
    };

_$DivisionImpl _$$DivisionImplFromJson(Map<String, dynamic> json) =>
    _$DivisionImpl(
      class_name: json['class_name'] as String,
      leader: json['leader'] as String,
      lecture_amount: json['lecture_amount'],
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$$DivisionImplToJson(_$DivisionImpl instance) =>
    <String, dynamic>{
      'class_name': instance.class_name,
      'leader': instance.leader,
      'lecture_amount': instance.lecture_amount,
      '_id': instance.id,
    };

_$AccountDocumentImpl _$$AccountDocumentImplFromJson(
        Map<String, dynamic> json) =>
    _$AccountDocumentImpl(
      certificate_national_id: json['certificate_national_id'],
      certificate_national_old: json['certificate_national_old'],
      certificate_passport: json['certificate_passport'],
      certificate_nationality: json['certificate_nationality'],
      certificate_address: json['certificate_address'],
      account_img_id: json['account_img_id'],
      father_img_id: json['father_img_id'],
      mother_img_id: json['mother_img_id'],
      assistance_img_id: json['assistance_img_id'],
    );

Map<String, dynamic> _$$AccountDocumentImplToJson(
        _$AccountDocumentImpl instance) =>
    <String, dynamic>{
      'certificate_national_id': instance.certificate_national_id,
      'certificate_national_old': instance.certificate_national_old,
      'certificate_passport': instance.certificate_passport,
      'certificate_nationality': instance.certificate_nationality,
      'certificate_address': instance.certificate_address,
      'account_img_id': instance.account_img_id,
      'father_img_id': instance.father_img_id,
      'mother_img_id': instance.mother_img_id,
      'assistance_img_id': instance.assistance_img_id,
    };

_$SchoolImpl _$$SchoolImplFromJson(Map<String, dynamic> json) => _$SchoolImpl(
      id: json['_id'] as String?,
      v: (json['__v'] as num?)?.toInt(),
      school_name: json['school_name'] as String,
      school_description: json['school_description'] as String?,
      school_logo: json['school_logo'] as String?,
      school_img: json['school_img'] as String?,
      school_website: json['school_website'] as String?,
      school_facebook: json['school_facebook'] as String?,
      school_whatsapp: json['school_whatsapp'] as String?,
      school_phone: json['school_phone'] as String?,
      school_google_map: json['school_google_map'] as String?,
      school_location: json['school_location'] as String?,
      school_currency: json['school_currency'] as String?,
      school_admin_note: json['school_admin_note'],
      school_features: SchoolFeatures.fromJson(
          json['school_features'] as Map<String, dynamic>),
      school_subjects: (json['school_subjects'] as List<dynamic>)
          .map((e) => SchoolSubject.fromJson(e as Map<String, dynamic>))
          .toList(),
      created_at: (json['created_at'] as num).toInt(),
      school_class: (json['school_class'] as List<dynamic>)
          .map((e) => Division.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      exchange_rate: (json['exchange_rate'] as num?)?.toInt(),
      is_kindergarten: json['is_kindergarten'] as bool?,
      school_pages: (json['school_pages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      school_en_name: json['school_en_name'] as String?,
      school_qr_code: json['school_qr_code'] as String?,
    );

Map<String, dynamic> _$$SchoolImplToJson(_$SchoolImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      '__v': instance.v,
      'school_name': instance.school_name,
      'school_description': instance.school_description,
      'school_logo': instance.school_logo,
      'school_img': instance.school_img,
      'school_website': instance.school_website,
      'school_facebook': instance.school_facebook,
      'school_whatsapp': instance.school_whatsapp,
      'school_phone': instance.school_phone,
      'school_google_map': instance.school_google_map,
      'school_location': instance.school_location,
      'school_currency': instance.school_currency,
      'school_admin_note': instance.school_admin_note,
      'school_features': instance.school_features,
      'school_subjects': instance.school_subjects,
      'created_at': instance.created_at,
      'school_class': instance.school_class,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'exchange_rate': instance.exchange_rate,
      'is_kindergarten': instance.is_kindergarten,
      'school_pages': instance.school_pages,
      'school_en_name': instance.school_en_name,
      'school_qr_code': instance.school_qr_code,
    };

_$SchoolFeaturesImpl _$$SchoolFeaturesImplFromJson(Map<String, dynamic> json) =>
    _$SchoolFeaturesImpl(
      features_finger_id: json['features_finger_id'] as bool,
      features_absence: json['features_absence'] as bool,
      features_teachers_absence: json['features_teachers_absence'] as bool,
      features_review: json['features_review'] as bool,
      features_dailyExam: json['features_dailyExam'] as bool,
      features_drivers: json['features_drivers'] as bool,
      features_exams: json['features_exams'] as bool,
      features_notifications: json['features_notifications'] as bool,
      features_chat: json['features_chat'] as bool,
      features_gps: json['features_gps'] as bool,
      features_schedule_weekly: json['features_schedule_weekly'] as bool,
      features_live: json['features_live'] as bool,
      features_latest_news: json['features_latest_news'] as bool,
      features_degrees: json['features_degrees'] as bool,
      features_subject: json['features_subject'] as bool,
      features_employee: json['features_employee'] as bool,
      features_accountant: json['features_accountant'] as bool,
    );

Map<String, dynamic> _$$SchoolFeaturesImplToJson(
        _$SchoolFeaturesImpl instance) =>
    <String, dynamic>{
      'features_finger_id': instance.features_finger_id,
      'features_absence': instance.features_absence,
      'features_teachers_absence': instance.features_teachers_absence,
      'features_review': instance.features_review,
      'features_dailyExam': instance.features_dailyExam,
      'features_drivers': instance.features_drivers,
      'features_exams': instance.features_exams,
      'features_notifications': instance.features_notifications,
      'features_chat': instance.features_chat,
      'features_gps': instance.features_gps,
      'features_schedule_weekly': instance.features_schedule_weekly,
      'features_live': instance.features_live,
      'features_latest_news': instance.features_latest_news,
      'features_degrees': instance.features_degrees,
      'features_subject': instance.features_subject,
      'features_employee': instance.features_employee,
      'features_accountant': instance.features_accountant,
    };

_$SchoolSubjectImpl _$$SchoolSubjectImplFromJson(Map<String, dynamic> json) =>
    _$SchoolSubjectImpl(
      subject_name: json['subject_name'] as String,
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$$SchoolSubjectImplToJson(_$SchoolSubjectImpl instance) =>
    <String, dynamic>{
      'subject_name': instance.subject_name,
      '_id': instance.id,
    };

_$SettingImpl _$$SettingImplFromJson(Map<String, dynamic> json) =>
    _$SettingImpl(
      id: json['_id'] as String?,
      setting_year: json['setting_year'] as String,
      created_at: (json['created_at'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SettingImplToJson(_$SettingImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'setting_year': instance.setting_year,
      'created_at': instance.created_at,
    };
