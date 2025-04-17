import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
class ProfileResponse with _$ProfileResponse {
  const factory ProfileResponse({
    required bool error,
    required ProfileModel results,
    @JsonKey(name: "content_url") String? contentUrl,
  }) = _ProfileResponse;

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);
}

@freezed
class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    required AccountData account,
    required List<Setting> setting,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}

@freezed
class AccountData with _$AccountData {
  const factory AccountData({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: '__v') int? v,
    required String account_name,
    String? account_nearest_point,
    String? account_area,
    String? account_alley,
    String? account_mobile,
    String? account_mobile_father,
    String? account_mobile_mother,
    List<Division>? account_division,
    String? account_gender,
    int? account_max_vacation,
    bool? isAccountCanSendNotification,
    AccountDocument? account_document,
    String? account_address,
    String? account_img,
    dynamic account_start_date,
    dynamic account_notification_register,
    dynamic account_zoom,
    dynamic account_salary,
    dynamic account_delete_reason,
    dynamic account_card_number,
    dynamic account_car_color,
    dynamic account_car_number,
    bool? is_deleted_from_student_has_no_bills,
    dynamic account_subject,
    bool? isAccountUploadedFile,
    dynamic account_registration_number,
    int? created_at,
    DateTime? createdAt,
    DateTime? updatedAt,

    School? school,
    List<Division>? account_division_filter_year,
    Division? account_division_current,
  }) = _AccountData;

  factory AccountData.fromJson(Map<String, dynamic> json) =>
      _$AccountDataFromJson(json);
}

@freezed
class Division with _$Division {
  const factory Division({
    required String class_name,
    required String leader,
    dynamic lecture_amount,
    @JsonKey(name: '_id') String? id,
  }) = _Division;

  factory Division.fromJson(Map<String, dynamic> json) =>
      _$DivisionFromJson(json);
}

@freezed
class AccountDocument with _$AccountDocument {
  const factory AccountDocument({
    dynamic certificate_national_id,
    dynamic certificate_national_old,
    dynamic certificate_passport,
    dynamic certificate_nationality,
    dynamic certificate_address,
    dynamic account_img_id,
    dynamic father_img_id,
    dynamic mother_img_id,
    dynamic assistance_img_id,
  }) = _AccountDocument;

  factory AccountDocument.fromJson(Map<String, dynamic> json) =>
      _$AccountDocumentFromJson(json);
}

@freezed
class School with _$School {
  const factory School({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: '__v') int? v,
    required String school_name,
    String? school_description,
    String? school_logo,
    String? school_img,
    String? school_website,
    String? school_facebook,
    String? school_whatsapp,
    String? school_phone,
    String? school_google_map,
    String? school_location,
    String? school_currency,
    dynamic school_admin_note,
    required SchoolFeatures school_features,
    required List<SchoolSubject> school_subjects,
    required int created_at,
    required List<Division> school_class,
    DateTime? createdAt,
    DateTime? updatedAt,

    int? exchange_rate,
    bool? is_kindergarten,
    List<String>? school_pages,
    String? school_en_name,
    String? school_qr_code,
  }) = _School;

  factory School.fromJson(Map<String, dynamic> json) => _$SchoolFromJson(json);
}

@freezed
class SchoolFeatures with _$SchoolFeatures {
  const factory SchoolFeatures({
    required bool features_finger_id,
    required bool features_absence,
    required bool features_teachers_absence,
    required bool features_review,
    required bool features_dailyExam,
    required bool features_drivers,
    required bool features_exams,
    required bool features_notifications,
    required bool features_chat,
    required bool features_gps,
    required bool features_schedule_weekly,
    required bool features_live,
    required bool features_latest_news,
    required bool features_degrees,
    required bool features_subject,
    required bool features_employee,
    required bool features_accountant,
  }) = _SchoolFeatures;

  factory SchoolFeatures.fromJson(Map<String, dynamic> json) =>
      _$SchoolFeaturesFromJson(json);
}

@freezed
class SchoolSubject with _$SchoolSubject {
  const factory SchoolSubject({
    required String subject_name,
    @JsonKey(name: '_id') String? id,
  }) = _SchoolSubject;

  factory SchoolSubject.fromJson(Map<String, dynamic> json) =>
      _$SchoolSubjectFromJson(json);
}

@freezed
class Setting with _$Setting {
  const factory Setting({
    @JsonKey(name: '_id') String? id,

    required String setting_year,
    int? created_at,
  }) = _Setting;

  factory Setting.fromJson(Map<String, dynamic> json) =>
      _$SettingFromJson(json);
}
