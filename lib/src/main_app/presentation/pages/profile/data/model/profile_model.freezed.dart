// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileResponse _$ProfileResponseFromJson(Map<String, dynamic> json) {
  return _ProfileResponse.fromJson(json);
}

/// @nodoc
mixin _$ProfileResponse {
  bool get error => throw _privateConstructorUsedError;
  ProfileModel get results => throw _privateConstructorUsedError;
  @JsonKey(name: "content_url")
  String? get contentUrl => throw _privateConstructorUsedError;

  /// Serializes this ProfileResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileResponseCopyWith<ProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileResponseCopyWith<$Res> {
  factory $ProfileResponseCopyWith(
          ProfileResponse value, $Res Function(ProfileResponse) then) =
      _$ProfileResponseCopyWithImpl<$Res, ProfileResponse>;
  @useResult
  $Res call(
      {bool error,
      ProfileModel results,
      @JsonKey(name: "content_url") String? contentUrl});

  $ProfileModelCopyWith<$Res> get results;
}

/// @nodoc
class _$ProfileResponseCopyWithImpl<$Res, $Val extends ProfileResponse>
    implements $ProfileResponseCopyWith<$Res> {
  _$ProfileResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? results = null,
    Object? contentUrl = freezed,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as ProfileModel,
      contentUrl: freezed == contentUrl
          ? _value.contentUrl
          : contentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of ProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileModelCopyWith<$Res> get results {
    return $ProfileModelCopyWith<$Res>(_value.results, (value) {
      return _then(_value.copyWith(results: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileResponseImplCopyWith<$Res>
    implements $ProfileResponseCopyWith<$Res> {
  factory _$$ProfileResponseImplCopyWith(_$ProfileResponseImpl value,
          $Res Function(_$ProfileResponseImpl) then) =
      __$$ProfileResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool error,
      ProfileModel results,
      @JsonKey(name: "content_url") String? contentUrl});

  @override
  $ProfileModelCopyWith<$Res> get results;
}

/// @nodoc
class __$$ProfileResponseImplCopyWithImpl<$Res>
    extends _$ProfileResponseCopyWithImpl<$Res, _$ProfileResponseImpl>
    implements _$$ProfileResponseImplCopyWith<$Res> {
  __$$ProfileResponseImplCopyWithImpl(
      _$ProfileResponseImpl _value, $Res Function(_$ProfileResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? results = null,
    Object? contentUrl = freezed,
  }) {
    return _then(_$ProfileResponseImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as ProfileModel,
      contentUrl: freezed == contentUrl
          ? _value.contentUrl
          : contentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileResponseImpl implements _ProfileResponse {
  const _$ProfileResponseImpl(
      {required this.error,
      required this.results,
      @JsonKey(name: "content_url") this.contentUrl});

  factory _$ProfileResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileResponseImplFromJson(json);

  @override
  final bool error;
  @override
  final ProfileModel results;
  @override
  @JsonKey(name: "content_url")
  final String? contentUrl;

  @override
  String toString() {
    return 'ProfileResponse(error: $error, results: $results, contentUrl: $contentUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileResponseImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.results, results) || other.results == results) &&
            (identical(other.contentUrl, contentUrl) ||
                other.contentUrl == contentUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error, results, contentUrl);

  /// Create a copy of ProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileResponseImplCopyWith<_$ProfileResponseImpl> get copyWith =>
      __$$ProfileResponseImplCopyWithImpl<_$ProfileResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileResponseImplToJson(
      this,
    );
  }
}

abstract class _ProfileResponse implements ProfileResponse {
  const factory _ProfileResponse(
          {required final bool error,
          required final ProfileModel results,
          @JsonKey(name: "content_url") final String? contentUrl}) =
      _$ProfileResponseImpl;

  factory _ProfileResponse.fromJson(Map<String, dynamic> json) =
      _$ProfileResponseImpl.fromJson;

  @override
  bool get error;
  @override
  ProfileModel get results;
  @override
  @JsonKey(name: "content_url")
  String? get contentUrl;

  /// Create a copy of ProfileResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileResponseImplCopyWith<_$ProfileResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) {
  return _ProfileModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileModel {
  AccountData get account => throw _privateConstructorUsedError;
  List<Setting> get setting => throw _privateConstructorUsedError;

  /// Serializes this ProfileModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileModelCopyWith<ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileModelCopyWith<$Res> {
  factory $ProfileModelCopyWith(
          ProfileModel value, $Res Function(ProfileModel) then) =
      _$ProfileModelCopyWithImpl<$Res, ProfileModel>;
  @useResult
  $Res call({AccountData account, List<Setting> setting});

  $AccountDataCopyWith<$Res> get account;
}

/// @nodoc
class _$ProfileModelCopyWithImpl<$Res, $Val extends ProfileModel>
    implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? setting = null,
  }) {
    return _then(_value.copyWith(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountData,
      setting: null == setting
          ? _value.setting
          : setting // ignore: cast_nullable_to_non_nullable
              as List<Setting>,
    ) as $Val);
  }

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountDataCopyWith<$Res> get account {
    return $AccountDataCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileModelImplCopyWith<$Res>
    implements $ProfileModelCopyWith<$Res> {
  factory _$$ProfileModelImplCopyWith(
          _$ProfileModelImpl value, $Res Function(_$ProfileModelImpl) then) =
      __$$ProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AccountData account, List<Setting> setting});

  @override
  $AccountDataCopyWith<$Res> get account;
}

/// @nodoc
class __$$ProfileModelImplCopyWithImpl<$Res>
    extends _$ProfileModelCopyWithImpl<$Res, _$ProfileModelImpl>
    implements _$$ProfileModelImplCopyWith<$Res> {
  __$$ProfileModelImplCopyWithImpl(
      _$ProfileModelImpl _value, $Res Function(_$ProfileModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? setting = null,
  }) {
    return _then(_$ProfileModelImpl(
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountData,
      setting: null == setting
          ? _value._setting
          : setting // ignore: cast_nullable_to_non_nullable
              as List<Setting>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileModelImpl implements _ProfileModel {
  const _$ProfileModelImpl(
      {required this.account, required final List<Setting> setting})
      : _setting = setting;

  factory _$ProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileModelImplFromJson(json);

  @override
  final AccountData account;
  final List<Setting> _setting;
  @override
  List<Setting> get setting {
    if (_setting is EqualUnmodifiableListView) return _setting;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_setting);
  }

  @override
  String toString() {
    return 'ProfileModel(account: $account, setting: $setting)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileModelImpl &&
            (identical(other.account, account) || other.account == account) &&
            const DeepCollectionEquality().equals(other._setting, _setting));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, account, const DeepCollectionEquality().hash(_setting));

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      __$$ProfileModelImplCopyWithImpl<_$ProfileModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileModel implements ProfileModel {
  const factory _ProfileModel(
      {required final AccountData account,
      required final List<Setting> setting}) = _$ProfileModelImpl;

  factory _ProfileModel.fromJson(Map<String, dynamic> json) =
      _$ProfileModelImpl.fromJson;

  @override
  AccountData get account;
  @override
  List<Setting> get setting;

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AccountData _$AccountDataFromJson(Map<String, dynamic> json) {
  return _AccountData.fromJson(json);
}

/// @nodoc
mixin _$AccountData {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: '__v')
  int? get v => throw _privateConstructorUsedError;
  String get account_name => throw _privateConstructorUsedError;
  String? get account_nearest_point => throw _privateConstructorUsedError;
  String? get account_area => throw _privateConstructorUsedError;
  String? get account_alley => throw _privateConstructorUsedError;
  String? get account_mobile => throw _privateConstructorUsedError;
  String? get account_mobile_father => throw _privateConstructorUsedError;
  String? get account_mobile_mother => throw _privateConstructorUsedError;
  List<Division>? get account_division => throw _privateConstructorUsedError;
  String? get account_gender => throw _privateConstructorUsedError;
  int? get account_max_vacation => throw _privateConstructorUsedError;
  bool? get isAccountCanSendNotification => throw _privateConstructorUsedError;
  AccountDocument? get account_document => throw _privateConstructorUsedError;
  String? get account_address => throw _privateConstructorUsedError;
  String? get account_img => throw _privateConstructorUsedError;
  dynamic get account_start_date => throw _privateConstructorUsedError;
  dynamic get account_notification_register =>
      throw _privateConstructorUsedError;
  dynamic get account_zoom => throw _privateConstructorUsedError;
  dynamic get account_salary => throw _privateConstructorUsedError;
  dynamic get account_delete_reason => throw _privateConstructorUsedError;
  dynamic get account_card_number => throw _privateConstructorUsedError;
  dynamic get account_car_color => throw _privateConstructorUsedError;
  dynamic get account_car_number => throw _privateConstructorUsedError;
  bool? get is_deleted_from_student_has_no_bills =>
      throw _privateConstructorUsedError;
  dynamic get account_subject => throw _privateConstructorUsedError;
  bool? get isAccountUploadedFile => throw _privateConstructorUsedError;
  dynamic get account_registration_number => throw _privateConstructorUsedError;
  int? get created_at => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  School? get school => throw _privateConstructorUsedError;
  List<Division>? get account_division_filter_year =>
      throw _privateConstructorUsedError;
  Division? get account_division_current => throw _privateConstructorUsedError;

  /// Serializes this AccountData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccountData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountDataCopyWith<AccountData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountDataCopyWith<$Res> {
  factory $AccountDataCopyWith(
          AccountData value, $Res Function(AccountData) then) =
      _$AccountDataCopyWithImpl<$Res, AccountData>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: '__v') int? v,
      String account_name,
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
      Division? account_division_current});

  $AccountDocumentCopyWith<$Res>? get account_document;
  $SchoolCopyWith<$Res>? get school;
  $DivisionCopyWith<$Res>? get account_division_current;
}

/// @nodoc
class _$AccountDataCopyWithImpl<$Res, $Val extends AccountData>
    implements $AccountDataCopyWith<$Res> {
  _$AccountDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? v = freezed,
    Object? account_name = null,
    Object? account_nearest_point = freezed,
    Object? account_area = freezed,
    Object? account_alley = freezed,
    Object? account_mobile = freezed,
    Object? account_mobile_father = freezed,
    Object? account_mobile_mother = freezed,
    Object? account_division = freezed,
    Object? account_gender = freezed,
    Object? account_max_vacation = freezed,
    Object? isAccountCanSendNotification = freezed,
    Object? account_document = freezed,
    Object? account_address = freezed,
    Object? account_img = freezed,
    Object? account_start_date = freezed,
    Object? account_notification_register = freezed,
    Object? account_zoom = freezed,
    Object? account_salary = freezed,
    Object? account_delete_reason = freezed,
    Object? account_card_number = freezed,
    Object? account_car_color = freezed,
    Object? account_car_number = freezed,
    Object? is_deleted_from_student_has_no_bills = freezed,
    Object? account_subject = freezed,
    Object? isAccountUploadedFile = freezed,
    Object? account_registration_number = freezed,
    Object? created_at = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? school = freezed,
    Object? account_division_filter_year = freezed,
    Object? account_division_current = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      account_name: null == account_name
          ? _value.account_name
          : account_name // ignore: cast_nullable_to_non_nullable
              as String,
      account_nearest_point: freezed == account_nearest_point
          ? _value.account_nearest_point
          : account_nearest_point // ignore: cast_nullable_to_non_nullable
              as String?,
      account_area: freezed == account_area
          ? _value.account_area
          : account_area // ignore: cast_nullable_to_non_nullable
              as String?,
      account_alley: freezed == account_alley
          ? _value.account_alley
          : account_alley // ignore: cast_nullable_to_non_nullable
              as String?,
      account_mobile: freezed == account_mobile
          ? _value.account_mobile
          : account_mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      account_mobile_father: freezed == account_mobile_father
          ? _value.account_mobile_father
          : account_mobile_father // ignore: cast_nullable_to_non_nullable
              as String?,
      account_mobile_mother: freezed == account_mobile_mother
          ? _value.account_mobile_mother
          : account_mobile_mother // ignore: cast_nullable_to_non_nullable
              as String?,
      account_division: freezed == account_division
          ? _value.account_division
          : account_division // ignore: cast_nullable_to_non_nullable
              as List<Division>?,
      account_gender: freezed == account_gender
          ? _value.account_gender
          : account_gender // ignore: cast_nullable_to_non_nullable
              as String?,
      account_max_vacation: freezed == account_max_vacation
          ? _value.account_max_vacation
          : account_max_vacation // ignore: cast_nullable_to_non_nullable
              as int?,
      isAccountCanSendNotification: freezed == isAccountCanSendNotification
          ? _value.isAccountCanSendNotification
          : isAccountCanSendNotification // ignore: cast_nullable_to_non_nullable
              as bool?,
      account_document: freezed == account_document
          ? _value.account_document
          : account_document // ignore: cast_nullable_to_non_nullable
              as AccountDocument?,
      account_address: freezed == account_address
          ? _value.account_address
          : account_address // ignore: cast_nullable_to_non_nullable
              as String?,
      account_img: freezed == account_img
          ? _value.account_img
          : account_img // ignore: cast_nullable_to_non_nullable
              as String?,
      account_start_date: freezed == account_start_date
          ? _value.account_start_date
          : account_start_date // ignore: cast_nullable_to_non_nullable
              as dynamic,
      account_notification_register: freezed == account_notification_register
          ? _value.account_notification_register
          : account_notification_register // ignore: cast_nullable_to_non_nullable
              as dynamic,
      account_zoom: freezed == account_zoom
          ? _value.account_zoom
          : account_zoom // ignore: cast_nullable_to_non_nullable
              as dynamic,
      account_salary: freezed == account_salary
          ? _value.account_salary
          : account_salary // ignore: cast_nullable_to_non_nullable
              as dynamic,
      account_delete_reason: freezed == account_delete_reason
          ? _value.account_delete_reason
          : account_delete_reason // ignore: cast_nullable_to_non_nullable
              as dynamic,
      account_card_number: freezed == account_card_number
          ? _value.account_card_number
          : account_card_number // ignore: cast_nullable_to_non_nullable
              as dynamic,
      account_car_color: freezed == account_car_color
          ? _value.account_car_color
          : account_car_color // ignore: cast_nullable_to_non_nullable
              as dynamic,
      account_car_number: freezed == account_car_number
          ? _value.account_car_number
          : account_car_number // ignore: cast_nullable_to_non_nullable
              as dynamic,
      is_deleted_from_student_has_no_bills: freezed ==
              is_deleted_from_student_has_no_bills
          ? _value.is_deleted_from_student_has_no_bills
          : is_deleted_from_student_has_no_bills // ignore: cast_nullable_to_non_nullable
              as bool?,
      account_subject: freezed == account_subject
          ? _value.account_subject
          : account_subject // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isAccountUploadedFile: freezed == isAccountUploadedFile
          ? _value.isAccountUploadedFile
          : isAccountUploadedFile // ignore: cast_nullable_to_non_nullable
              as bool?,
      account_registration_number: freezed == account_registration_number
          ? _value.account_registration_number
          : account_registration_number // ignore: cast_nullable_to_non_nullable
              as dynamic,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      school: freezed == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as School?,
      account_division_filter_year: freezed == account_division_filter_year
          ? _value.account_division_filter_year
          : account_division_filter_year // ignore: cast_nullable_to_non_nullable
              as List<Division>?,
      account_division_current: freezed == account_division_current
          ? _value.account_division_current
          : account_division_current // ignore: cast_nullable_to_non_nullable
              as Division?,
    ) as $Val);
  }

  /// Create a copy of AccountData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountDocumentCopyWith<$Res>? get account_document {
    if (_value.account_document == null) {
      return null;
    }

    return $AccountDocumentCopyWith<$Res>(_value.account_document!, (value) {
      return _then(_value.copyWith(account_document: value) as $Val);
    });
  }

  /// Create a copy of AccountData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SchoolCopyWith<$Res>? get school {
    if (_value.school == null) {
      return null;
    }

    return $SchoolCopyWith<$Res>(_value.school!, (value) {
      return _then(_value.copyWith(school: value) as $Val);
    });
  }

  /// Create a copy of AccountData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DivisionCopyWith<$Res>? get account_division_current {
    if (_value.account_division_current == null) {
      return null;
    }

    return $DivisionCopyWith<$Res>(_value.account_division_current!, (value) {
      return _then(_value.copyWith(account_division_current: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountDataImplCopyWith<$Res>
    implements $AccountDataCopyWith<$Res> {
  factory _$$AccountDataImplCopyWith(
          _$AccountDataImpl value, $Res Function(_$AccountDataImpl) then) =
      __$$AccountDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: '__v') int? v,
      String account_name,
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
      Division? account_division_current});

  @override
  $AccountDocumentCopyWith<$Res>? get account_document;
  @override
  $SchoolCopyWith<$Res>? get school;
  @override
  $DivisionCopyWith<$Res>? get account_division_current;
}

/// @nodoc
class __$$AccountDataImplCopyWithImpl<$Res>
    extends _$AccountDataCopyWithImpl<$Res, _$AccountDataImpl>
    implements _$$AccountDataImplCopyWith<$Res> {
  __$$AccountDataImplCopyWithImpl(
      _$AccountDataImpl _value, $Res Function(_$AccountDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? v = freezed,
    Object? account_name = null,
    Object? account_nearest_point = freezed,
    Object? account_area = freezed,
    Object? account_alley = freezed,
    Object? account_mobile = freezed,
    Object? account_mobile_father = freezed,
    Object? account_mobile_mother = freezed,
    Object? account_division = freezed,
    Object? account_gender = freezed,
    Object? account_max_vacation = freezed,
    Object? isAccountCanSendNotification = freezed,
    Object? account_document = freezed,
    Object? account_address = freezed,
    Object? account_img = freezed,
    Object? account_start_date = freezed,
    Object? account_notification_register = freezed,
    Object? account_zoom = freezed,
    Object? account_salary = freezed,
    Object? account_delete_reason = freezed,
    Object? account_card_number = freezed,
    Object? account_car_color = freezed,
    Object? account_car_number = freezed,
    Object? is_deleted_from_student_has_no_bills = freezed,
    Object? account_subject = freezed,
    Object? isAccountUploadedFile = freezed,
    Object? account_registration_number = freezed,
    Object? created_at = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? school = freezed,
    Object? account_division_filter_year = freezed,
    Object? account_division_current = freezed,
  }) {
    return _then(_$AccountDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      account_name: null == account_name
          ? _value.account_name
          : account_name // ignore: cast_nullable_to_non_nullable
              as String,
      account_nearest_point: freezed == account_nearest_point
          ? _value.account_nearest_point
          : account_nearest_point // ignore: cast_nullable_to_non_nullable
              as String?,
      account_area: freezed == account_area
          ? _value.account_area
          : account_area // ignore: cast_nullable_to_non_nullable
              as String?,
      account_alley: freezed == account_alley
          ? _value.account_alley
          : account_alley // ignore: cast_nullable_to_non_nullable
              as String?,
      account_mobile: freezed == account_mobile
          ? _value.account_mobile
          : account_mobile // ignore: cast_nullable_to_non_nullable
              as String?,
      account_mobile_father: freezed == account_mobile_father
          ? _value.account_mobile_father
          : account_mobile_father // ignore: cast_nullable_to_non_nullable
              as String?,
      account_mobile_mother: freezed == account_mobile_mother
          ? _value.account_mobile_mother
          : account_mobile_mother // ignore: cast_nullable_to_non_nullable
              as String?,
      account_division: freezed == account_division
          ? _value._account_division
          : account_division // ignore: cast_nullable_to_non_nullable
              as List<Division>?,
      account_gender: freezed == account_gender
          ? _value.account_gender
          : account_gender // ignore: cast_nullable_to_non_nullable
              as String?,
      account_max_vacation: freezed == account_max_vacation
          ? _value.account_max_vacation
          : account_max_vacation // ignore: cast_nullable_to_non_nullable
              as int?,
      isAccountCanSendNotification: freezed == isAccountCanSendNotification
          ? _value.isAccountCanSendNotification
          : isAccountCanSendNotification // ignore: cast_nullable_to_non_nullable
              as bool?,
      account_document: freezed == account_document
          ? _value.account_document
          : account_document // ignore: cast_nullable_to_non_nullable
              as AccountDocument?,
      account_address: freezed == account_address
          ? _value.account_address
          : account_address // ignore: cast_nullable_to_non_nullable
              as String?,
      account_img: freezed == account_img
          ? _value.account_img
          : account_img // ignore: cast_nullable_to_non_nullable
              as String?,
      account_start_date: freezed == account_start_date
          ? _value.account_start_date
          : account_start_date // ignore: cast_nullable_to_non_nullable
              as dynamic,
      account_notification_register: freezed == account_notification_register
          ? _value.account_notification_register
          : account_notification_register // ignore: cast_nullable_to_non_nullable
              as dynamic,
      account_zoom: freezed == account_zoom
          ? _value.account_zoom
          : account_zoom // ignore: cast_nullable_to_non_nullable
              as dynamic,
      account_salary: freezed == account_salary
          ? _value.account_salary
          : account_salary // ignore: cast_nullable_to_non_nullable
              as dynamic,
      account_delete_reason: freezed == account_delete_reason
          ? _value.account_delete_reason
          : account_delete_reason // ignore: cast_nullable_to_non_nullable
              as dynamic,
      account_card_number: freezed == account_card_number
          ? _value.account_card_number
          : account_card_number // ignore: cast_nullable_to_non_nullable
              as dynamic,
      account_car_color: freezed == account_car_color
          ? _value.account_car_color
          : account_car_color // ignore: cast_nullable_to_non_nullable
              as dynamic,
      account_car_number: freezed == account_car_number
          ? _value.account_car_number
          : account_car_number // ignore: cast_nullable_to_non_nullable
              as dynamic,
      is_deleted_from_student_has_no_bills: freezed ==
              is_deleted_from_student_has_no_bills
          ? _value.is_deleted_from_student_has_no_bills
          : is_deleted_from_student_has_no_bills // ignore: cast_nullable_to_non_nullable
              as bool?,
      account_subject: freezed == account_subject
          ? _value.account_subject
          : account_subject // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isAccountUploadedFile: freezed == isAccountUploadedFile
          ? _value.isAccountUploadedFile
          : isAccountUploadedFile // ignore: cast_nullable_to_non_nullable
              as bool?,
      account_registration_number: freezed == account_registration_number
          ? _value.account_registration_number
          : account_registration_number // ignore: cast_nullable_to_non_nullable
              as dynamic,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      school: freezed == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as School?,
      account_division_filter_year: freezed == account_division_filter_year
          ? _value._account_division_filter_year
          : account_division_filter_year // ignore: cast_nullable_to_non_nullable
              as List<Division>?,
      account_division_current: freezed == account_division_current
          ? _value.account_division_current
          : account_division_current // ignore: cast_nullable_to_non_nullable
              as Division?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountDataImpl implements _AccountData {
  const _$AccountDataImpl(
      {@JsonKey(name: '_id') this.id,
      @JsonKey(name: '__v') this.v,
      required this.account_name,
      this.account_nearest_point,
      this.account_area,
      this.account_alley,
      this.account_mobile,
      this.account_mobile_father,
      this.account_mobile_mother,
      final List<Division>? account_division,
      this.account_gender,
      this.account_max_vacation,
      this.isAccountCanSendNotification,
      this.account_document,
      this.account_address,
      this.account_img,
      this.account_start_date,
      this.account_notification_register,
      this.account_zoom,
      this.account_salary,
      this.account_delete_reason,
      this.account_card_number,
      this.account_car_color,
      this.account_car_number,
      this.is_deleted_from_student_has_no_bills,
      this.account_subject,
      this.isAccountUploadedFile,
      this.account_registration_number,
      this.created_at,
      this.createdAt,
      this.updatedAt,
      this.school,
      final List<Division>? account_division_filter_year,
      this.account_division_current})
      : _account_division = account_division,
        _account_division_filter_year = account_division_filter_year;

  factory _$AccountDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountDataImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: '__v')
  final int? v;
  @override
  final String account_name;
  @override
  final String? account_nearest_point;
  @override
  final String? account_area;
  @override
  final String? account_alley;
  @override
  final String? account_mobile;
  @override
  final String? account_mobile_father;
  @override
  final String? account_mobile_mother;
  final List<Division>? _account_division;
  @override
  List<Division>? get account_division {
    final value = _account_division;
    if (value == null) return null;
    if (_account_division is EqualUnmodifiableListView)
      return _account_division;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? account_gender;
  @override
  final int? account_max_vacation;
  @override
  final bool? isAccountCanSendNotification;
  @override
  final AccountDocument? account_document;
  @override
  final String? account_address;
  @override
  final String? account_img;
  @override
  final dynamic account_start_date;
  @override
  final dynamic account_notification_register;
  @override
  final dynamic account_zoom;
  @override
  final dynamic account_salary;
  @override
  final dynamic account_delete_reason;
  @override
  final dynamic account_card_number;
  @override
  final dynamic account_car_color;
  @override
  final dynamic account_car_number;
  @override
  final bool? is_deleted_from_student_has_no_bills;
  @override
  final dynamic account_subject;
  @override
  final bool? isAccountUploadedFile;
  @override
  final dynamic account_registration_number;
  @override
  final int? created_at;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final School? school;
  final List<Division>? _account_division_filter_year;
  @override
  List<Division>? get account_division_filter_year {
    final value = _account_division_filter_year;
    if (value == null) return null;
    if (_account_division_filter_year is EqualUnmodifiableListView)
      return _account_division_filter_year;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Division? account_division_current;

  @override
  String toString() {
    return 'AccountData(id: $id, v: $v, account_name: $account_name, account_nearest_point: $account_nearest_point, account_area: $account_area, account_alley: $account_alley, account_mobile: $account_mobile, account_mobile_father: $account_mobile_father, account_mobile_mother: $account_mobile_mother, account_division: $account_division, account_gender: $account_gender, account_max_vacation: $account_max_vacation, isAccountCanSendNotification: $isAccountCanSendNotification, account_document: $account_document, account_address: $account_address, account_img: $account_img, account_start_date: $account_start_date, account_notification_register: $account_notification_register, account_zoom: $account_zoom, account_salary: $account_salary, account_delete_reason: $account_delete_reason, account_card_number: $account_card_number, account_car_color: $account_car_color, account_car_number: $account_car_number, is_deleted_from_student_has_no_bills: $is_deleted_from_student_has_no_bills, account_subject: $account_subject, isAccountUploadedFile: $isAccountUploadedFile, account_registration_number: $account_registration_number, created_at: $created_at, createdAt: $createdAt, updatedAt: $updatedAt, school: $school, account_division_filter_year: $account_division_filter_year, account_division_current: $account_division_current)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.account_name, account_name) ||
                other.account_name == account_name) &&
            (identical(other.account_nearest_point, account_nearest_point) ||
                other.account_nearest_point == account_nearest_point) &&
            (identical(other.account_area, account_area) ||
                other.account_area == account_area) &&
            (identical(other.account_alley, account_alley) ||
                other.account_alley == account_alley) &&
            (identical(other.account_mobile, account_mobile) ||
                other.account_mobile == account_mobile) &&
            (identical(other.account_mobile_father, account_mobile_father) ||
                other.account_mobile_father == account_mobile_father) &&
            (identical(other.account_mobile_mother, account_mobile_mother) ||
                other.account_mobile_mother == account_mobile_mother) &&
            const DeepCollectionEquality()
                .equals(other._account_division, _account_division) &&
            (identical(other.account_gender, account_gender) ||
                other.account_gender == account_gender) &&
            (identical(other.account_max_vacation, account_max_vacation) ||
                other.account_max_vacation == account_max_vacation) &&
            (identical(other.isAccountCanSendNotification, isAccountCanSendNotification) ||
                other.isAccountCanSendNotification ==
                    isAccountCanSendNotification) &&
            (identical(other.account_document, account_document) ||
                other.account_document == account_document) &&
            (identical(other.account_address, account_address) ||
                other.account_address == account_address) &&
            (identical(other.account_img, account_img) ||
                other.account_img == account_img) &&
            const DeepCollectionEquality()
                .equals(other.account_start_date, account_start_date) &&
            const DeepCollectionEquality().equals(
                other.account_notification_register,
                account_notification_register) &&
            const DeepCollectionEquality()
                .equals(other.account_zoom, account_zoom) &&
            const DeepCollectionEquality()
                .equals(other.account_salary, account_salary) &&
            const DeepCollectionEquality()
                .equals(other.account_delete_reason, account_delete_reason) &&
            const DeepCollectionEquality()
                .equals(other.account_card_number, account_card_number) &&
            const DeepCollectionEquality()
                .equals(other.account_car_color, account_car_color) &&
            const DeepCollectionEquality()
                .equals(other.account_car_number, account_car_number) &&
            (identical(other.is_deleted_from_student_has_no_bills, is_deleted_from_student_has_no_bills) ||
                other.is_deleted_from_student_has_no_bills ==
                    is_deleted_from_student_has_no_bills) &&
            const DeepCollectionEquality()
                .equals(other.account_subject, account_subject) &&
            (identical(other.isAccountUploadedFile, isAccountUploadedFile) ||
                other.isAccountUploadedFile == isAccountUploadedFile) &&
            const DeepCollectionEquality().equals(
                other.account_registration_number,
                account_registration_number) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.school, school) || other.school == school) &&
            const DeepCollectionEquality().equals(
                other._account_division_filter_year, _account_division_filter_year) &&
            (identical(other.account_division_current, account_division_current) || other.account_division_current == account_division_current));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        v,
        account_name,
        account_nearest_point,
        account_area,
        account_alley,
        account_mobile,
        account_mobile_father,
        account_mobile_mother,
        const DeepCollectionEquality().hash(_account_division),
        account_gender,
        account_max_vacation,
        isAccountCanSendNotification,
        account_document,
        account_address,
        account_img,
        const DeepCollectionEquality().hash(account_start_date),
        const DeepCollectionEquality().hash(account_notification_register),
        const DeepCollectionEquality().hash(account_zoom),
        const DeepCollectionEquality().hash(account_salary),
        const DeepCollectionEquality().hash(account_delete_reason),
        const DeepCollectionEquality().hash(account_card_number),
        const DeepCollectionEquality().hash(account_car_color),
        const DeepCollectionEquality().hash(account_car_number),
        is_deleted_from_student_has_no_bills,
        const DeepCollectionEquality().hash(account_subject),
        isAccountUploadedFile,
        const DeepCollectionEquality().hash(account_registration_number),
        created_at,
        createdAt,
        updatedAt,
        school,
        const DeepCollectionEquality().hash(_account_division_filter_year),
        account_division_current
      ]);

  /// Create a copy of AccountData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountDataImplCopyWith<_$AccountDataImpl> get copyWith =>
      __$$AccountDataImplCopyWithImpl<_$AccountDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountDataImplToJson(
      this,
    );
  }
}

abstract class _AccountData implements AccountData {
  const factory _AccountData(
      {@JsonKey(name: '_id') final String? id,
      @JsonKey(name: '__v') final int? v,
      required final String account_name,
      final String? account_nearest_point,
      final String? account_area,
      final String? account_alley,
      final String? account_mobile,
      final String? account_mobile_father,
      final String? account_mobile_mother,
      final List<Division>? account_division,
      final String? account_gender,
      final int? account_max_vacation,
      final bool? isAccountCanSendNotification,
      final AccountDocument? account_document,
      final String? account_address,
      final String? account_img,
      final dynamic account_start_date,
      final dynamic account_notification_register,
      final dynamic account_zoom,
      final dynamic account_salary,
      final dynamic account_delete_reason,
      final dynamic account_card_number,
      final dynamic account_car_color,
      final dynamic account_car_number,
      final bool? is_deleted_from_student_has_no_bills,
      final dynamic account_subject,
      final bool? isAccountUploadedFile,
      final dynamic account_registration_number,
      final int? created_at,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final School? school,
      final List<Division>? account_division_filter_year,
      final Division? account_division_current}) = _$AccountDataImpl;

  factory _AccountData.fromJson(Map<String, dynamic> json) =
      _$AccountDataImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(name: '__v')
  int? get v;
  @override
  String get account_name;
  @override
  String? get account_nearest_point;
  @override
  String? get account_area;
  @override
  String? get account_alley;
  @override
  String? get account_mobile;
  @override
  String? get account_mobile_father;
  @override
  String? get account_mobile_mother;
  @override
  List<Division>? get account_division;
  @override
  String? get account_gender;
  @override
  int? get account_max_vacation;
  @override
  bool? get isAccountCanSendNotification;
  @override
  AccountDocument? get account_document;
  @override
  String? get account_address;
  @override
  String? get account_img;
  @override
  dynamic get account_start_date;
  @override
  dynamic get account_notification_register;
  @override
  dynamic get account_zoom;
  @override
  dynamic get account_salary;
  @override
  dynamic get account_delete_reason;
  @override
  dynamic get account_card_number;
  @override
  dynamic get account_car_color;
  @override
  dynamic get account_car_number;
  @override
  bool? get is_deleted_from_student_has_no_bills;
  @override
  dynamic get account_subject;
  @override
  bool? get isAccountUploadedFile;
  @override
  dynamic get account_registration_number;
  @override
  int? get created_at;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  School? get school;
  @override
  List<Division>? get account_division_filter_year;
  @override
  Division? get account_division_current;

  /// Create a copy of AccountData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountDataImplCopyWith<_$AccountDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Division _$DivisionFromJson(Map<String, dynamic> json) {
  return _Division.fromJson(json);
}

/// @nodoc
mixin _$Division {
  String get class_name => throw _privateConstructorUsedError;
  String get leader => throw _privateConstructorUsedError;
  dynamic get lecture_amount => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this Division to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Division
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DivisionCopyWith<Division> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DivisionCopyWith<$Res> {
  factory $DivisionCopyWith(Division value, $Res Function(Division) then) =
      _$DivisionCopyWithImpl<$Res, Division>;
  @useResult
  $Res call(
      {String class_name,
      String leader,
      dynamic lecture_amount,
      @JsonKey(name: '_id') String? id});
}

/// @nodoc
class _$DivisionCopyWithImpl<$Res, $Val extends Division>
    implements $DivisionCopyWith<$Res> {
  _$DivisionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Division
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? class_name = null,
    Object? leader = null,
    Object? lecture_amount = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      class_name: null == class_name
          ? _value.class_name
          : class_name // ignore: cast_nullable_to_non_nullable
              as String,
      leader: null == leader
          ? _value.leader
          : leader // ignore: cast_nullable_to_non_nullable
              as String,
      lecture_amount: freezed == lecture_amount
          ? _value.lecture_amount
          : lecture_amount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DivisionImplCopyWith<$Res>
    implements $DivisionCopyWith<$Res> {
  factory _$$DivisionImplCopyWith(
          _$DivisionImpl value, $Res Function(_$DivisionImpl) then) =
      __$$DivisionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String class_name,
      String leader,
      dynamic lecture_amount,
      @JsonKey(name: '_id') String? id});
}

/// @nodoc
class __$$DivisionImplCopyWithImpl<$Res>
    extends _$DivisionCopyWithImpl<$Res, _$DivisionImpl>
    implements _$$DivisionImplCopyWith<$Res> {
  __$$DivisionImplCopyWithImpl(
      _$DivisionImpl _value, $Res Function(_$DivisionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Division
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? class_name = null,
    Object? leader = null,
    Object? lecture_amount = freezed,
    Object? id = freezed,
  }) {
    return _then(_$DivisionImpl(
      class_name: null == class_name
          ? _value.class_name
          : class_name // ignore: cast_nullable_to_non_nullable
              as String,
      leader: null == leader
          ? _value.leader
          : leader // ignore: cast_nullable_to_non_nullable
              as String,
      lecture_amount: freezed == lecture_amount
          ? _value.lecture_amount
          : lecture_amount // ignore: cast_nullable_to_non_nullable
              as dynamic,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DivisionImpl implements _Division {
  const _$DivisionImpl(
      {required this.class_name,
      required this.leader,
      this.lecture_amount,
      @JsonKey(name: '_id') this.id});

  factory _$DivisionImpl.fromJson(Map<String, dynamic> json) =>
      _$$DivisionImplFromJson(json);

  @override
  final String class_name;
  @override
  final String leader;
  @override
  final dynamic lecture_amount;
  @override
  @JsonKey(name: '_id')
  final String? id;

  @override
  String toString() {
    return 'Division(class_name: $class_name, leader: $leader, lecture_amount: $lecture_amount, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DivisionImpl &&
            (identical(other.class_name, class_name) ||
                other.class_name == class_name) &&
            (identical(other.leader, leader) || other.leader == leader) &&
            const DeepCollectionEquality()
                .equals(other.lecture_amount, lecture_amount) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, class_name, leader,
      const DeepCollectionEquality().hash(lecture_amount), id);

  /// Create a copy of Division
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DivisionImplCopyWith<_$DivisionImpl> get copyWith =>
      __$$DivisionImplCopyWithImpl<_$DivisionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DivisionImplToJson(
      this,
    );
  }
}

abstract class _Division implements Division {
  const factory _Division(
      {required final String class_name,
      required final String leader,
      final dynamic lecture_amount,
      @JsonKey(name: '_id') final String? id}) = _$DivisionImpl;

  factory _Division.fromJson(Map<String, dynamic> json) =
      _$DivisionImpl.fromJson;

  @override
  String get class_name;
  @override
  String get leader;
  @override
  dynamic get lecture_amount;
  @override
  @JsonKey(name: '_id')
  String? get id;

  /// Create a copy of Division
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DivisionImplCopyWith<_$DivisionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AccountDocument _$AccountDocumentFromJson(Map<String, dynamic> json) {
  return _AccountDocument.fromJson(json);
}

/// @nodoc
mixin _$AccountDocument {
  dynamic get certificate_national_id => throw _privateConstructorUsedError;
  dynamic get certificate_national_old => throw _privateConstructorUsedError;
  dynamic get certificate_passport => throw _privateConstructorUsedError;
  dynamic get certificate_nationality => throw _privateConstructorUsedError;
  dynamic get certificate_address => throw _privateConstructorUsedError;
  dynamic get account_img_id => throw _privateConstructorUsedError;
  dynamic get father_img_id => throw _privateConstructorUsedError;
  dynamic get mother_img_id => throw _privateConstructorUsedError;
  dynamic get assistance_img_id => throw _privateConstructorUsedError;

  /// Serializes this AccountDocument to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccountDocument
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountDocumentCopyWith<AccountDocument> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountDocumentCopyWith<$Res> {
  factory $AccountDocumentCopyWith(
          AccountDocument value, $Res Function(AccountDocument) then) =
      _$AccountDocumentCopyWithImpl<$Res, AccountDocument>;
  @useResult
  $Res call(
      {dynamic certificate_national_id,
      dynamic certificate_national_old,
      dynamic certificate_passport,
      dynamic certificate_nationality,
      dynamic certificate_address,
      dynamic account_img_id,
      dynamic father_img_id,
      dynamic mother_img_id,
      dynamic assistance_img_id});
}

/// @nodoc
class _$AccountDocumentCopyWithImpl<$Res, $Val extends AccountDocument>
    implements $AccountDocumentCopyWith<$Res> {
  _$AccountDocumentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountDocument
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? certificate_national_id = freezed,
    Object? certificate_national_old = freezed,
    Object? certificate_passport = freezed,
    Object? certificate_nationality = freezed,
    Object? certificate_address = freezed,
    Object? account_img_id = freezed,
    Object? father_img_id = freezed,
    Object? mother_img_id = freezed,
    Object? assistance_img_id = freezed,
  }) {
    return _then(_value.copyWith(
      certificate_national_id: freezed == certificate_national_id
          ? _value.certificate_national_id
          : certificate_national_id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      certificate_national_old: freezed == certificate_national_old
          ? _value.certificate_national_old
          : certificate_national_old // ignore: cast_nullable_to_non_nullable
              as dynamic,
      certificate_passport: freezed == certificate_passport
          ? _value.certificate_passport
          : certificate_passport // ignore: cast_nullable_to_non_nullable
              as dynamic,
      certificate_nationality: freezed == certificate_nationality
          ? _value.certificate_nationality
          : certificate_nationality // ignore: cast_nullable_to_non_nullable
              as dynamic,
      certificate_address: freezed == certificate_address
          ? _value.certificate_address
          : certificate_address // ignore: cast_nullable_to_non_nullable
              as dynamic,
      account_img_id: freezed == account_img_id
          ? _value.account_img_id
          : account_img_id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      father_img_id: freezed == father_img_id
          ? _value.father_img_id
          : father_img_id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mother_img_id: freezed == mother_img_id
          ? _value.mother_img_id
          : mother_img_id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      assistance_img_id: freezed == assistance_img_id
          ? _value.assistance_img_id
          : assistance_img_id // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountDocumentImplCopyWith<$Res>
    implements $AccountDocumentCopyWith<$Res> {
  factory _$$AccountDocumentImplCopyWith(_$AccountDocumentImpl value,
          $Res Function(_$AccountDocumentImpl) then) =
      __$$AccountDocumentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic certificate_national_id,
      dynamic certificate_national_old,
      dynamic certificate_passport,
      dynamic certificate_nationality,
      dynamic certificate_address,
      dynamic account_img_id,
      dynamic father_img_id,
      dynamic mother_img_id,
      dynamic assistance_img_id});
}

/// @nodoc
class __$$AccountDocumentImplCopyWithImpl<$Res>
    extends _$AccountDocumentCopyWithImpl<$Res, _$AccountDocumentImpl>
    implements _$$AccountDocumentImplCopyWith<$Res> {
  __$$AccountDocumentImplCopyWithImpl(
      _$AccountDocumentImpl _value, $Res Function(_$AccountDocumentImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountDocument
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? certificate_national_id = freezed,
    Object? certificate_national_old = freezed,
    Object? certificate_passport = freezed,
    Object? certificate_nationality = freezed,
    Object? certificate_address = freezed,
    Object? account_img_id = freezed,
    Object? father_img_id = freezed,
    Object? mother_img_id = freezed,
    Object? assistance_img_id = freezed,
  }) {
    return _then(_$AccountDocumentImpl(
      certificate_national_id: freezed == certificate_national_id
          ? _value.certificate_national_id
          : certificate_national_id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      certificate_national_old: freezed == certificate_national_old
          ? _value.certificate_national_old
          : certificate_national_old // ignore: cast_nullable_to_non_nullable
              as dynamic,
      certificate_passport: freezed == certificate_passport
          ? _value.certificate_passport
          : certificate_passport // ignore: cast_nullable_to_non_nullable
              as dynamic,
      certificate_nationality: freezed == certificate_nationality
          ? _value.certificate_nationality
          : certificate_nationality // ignore: cast_nullable_to_non_nullable
              as dynamic,
      certificate_address: freezed == certificate_address
          ? _value.certificate_address
          : certificate_address // ignore: cast_nullable_to_non_nullable
              as dynamic,
      account_img_id: freezed == account_img_id
          ? _value.account_img_id
          : account_img_id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      father_img_id: freezed == father_img_id
          ? _value.father_img_id
          : father_img_id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      mother_img_id: freezed == mother_img_id
          ? _value.mother_img_id
          : mother_img_id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      assistance_img_id: freezed == assistance_img_id
          ? _value.assistance_img_id
          : assistance_img_id // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountDocumentImpl implements _AccountDocument {
  const _$AccountDocumentImpl(
      {this.certificate_national_id,
      this.certificate_national_old,
      this.certificate_passport,
      this.certificate_nationality,
      this.certificate_address,
      this.account_img_id,
      this.father_img_id,
      this.mother_img_id,
      this.assistance_img_id});

  factory _$AccountDocumentImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountDocumentImplFromJson(json);

  @override
  final dynamic certificate_national_id;
  @override
  final dynamic certificate_national_old;
  @override
  final dynamic certificate_passport;
  @override
  final dynamic certificate_nationality;
  @override
  final dynamic certificate_address;
  @override
  final dynamic account_img_id;
  @override
  final dynamic father_img_id;
  @override
  final dynamic mother_img_id;
  @override
  final dynamic assistance_img_id;

  @override
  String toString() {
    return 'AccountDocument(certificate_national_id: $certificate_national_id, certificate_national_old: $certificate_national_old, certificate_passport: $certificate_passport, certificate_nationality: $certificate_nationality, certificate_address: $certificate_address, account_img_id: $account_img_id, father_img_id: $father_img_id, mother_img_id: $mother_img_id, assistance_img_id: $assistance_img_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountDocumentImpl &&
            const DeepCollectionEquality().equals(
                other.certificate_national_id, certificate_national_id) &&
            const DeepCollectionEquality().equals(
                other.certificate_national_old, certificate_national_old) &&
            const DeepCollectionEquality()
                .equals(other.certificate_passport, certificate_passport) &&
            const DeepCollectionEquality().equals(
                other.certificate_nationality, certificate_nationality) &&
            const DeepCollectionEquality()
                .equals(other.certificate_address, certificate_address) &&
            const DeepCollectionEquality()
                .equals(other.account_img_id, account_img_id) &&
            const DeepCollectionEquality()
                .equals(other.father_img_id, father_img_id) &&
            const DeepCollectionEquality()
                .equals(other.mother_img_id, mother_img_id) &&
            const DeepCollectionEquality()
                .equals(other.assistance_img_id, assistance_img_id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(certificate_national_id),
      const DeepCollectionEquality().hash(certificate_national_old),
      const DeepCollectionEquality().hash(certificate_passport),
      const DeepCollectionEquality().hash(certificate_nationality),
      const DeepCollectionEquality().hash(certificate_address),
      const DeepCollectionEquality().hash(account_img_id),
      const DeepCollectionEquality().hash(father_img_id),
      const DeepCollectionEquality().hash(mother_img_id),
      const DeepCollectionEquality().hash(assistance_img_id));

  /// Create a copy of AccountDocument
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountDocumentImplCopyWith<_$AccountDocumentImpl> get copyWith =>
      __$$AccountDocumentImplCopyWithImpl<_$AccountDocumentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountDocumentImplToJson(
      this,
    );
  }
}

abstract class _AccountDocument implements AccountDocument {
  const factory _AccountDocument(
      {final dynamic certificate_national_id,
      final dynamic certificate_national_old,
      final dynamic certificate_passport,
      final dynamic certificate_nationality,
      final dynamic certificate_address,
      final dynamic account_img_id,
      final dynamic father_img_id,
      final dynamic mother_img_id,
      final dynamic assistance_img_id}) = _$AccountDocumentImpl;

  factory _AccountDocument.fromJson(Map<String, dynamic> json) =
      _$AccountDocumentImpl.fromJson;

  @override
  dynamic get certificate_national_id;
  @override
  dynamic get certificate_national_old;
  @override
  dynamic get certificate_passport;
  @override
  dynamic get certificate_nationality;
  @override
  dynamic get certificate_address;
  @override
  dynamic get account_img_id;
  @override
  dynamic get father_img_id;
  @override
  dynamic get mother_img_id;
  @override
  dynamic get assistance_img_id;

  /// Create a copy of AccountDocument
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountDocumentImplCopyWith<_$AccountDocumentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

School _$SchoolFromJson(Map<String, dynamic> json) {
  return _School.fromJson(json);
}

/// @nodoc
mixin _$School {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: '__v')
  int? get v => throw _privateConstructorUsedError;
  String get school_name => throw _privateConstructorUsedError;
  String? get school_description => throw _privateConstructorUsedError;
  String? get school_logo => throw _privateConstructorUsedError;
  String? get school_img => throw _privateConstructorUsedError;
  String? get school_website => throw _privateConstructorUsedError;
  String? get school_facebook => throw _privateConstructorUsedError;
  String? get school_whatsapp => throw _privateConstructorUsedError;
  String? get school_phone => throw _privateConstructorUsedError;
  String? get school_google_map => throw _privateConstructorUsedError;
  String? get school_location => throw _privateConstructorUsedError;
  String? get school_currency => throw _privateConstructorUsedError;
  dynamic get school_admin_note => throw _privateConstructorUsedError;
  SchoolFeatures get school_features => throw _privateConstructorUsedError;
  List<SchoolSubject> get school_subjects => throw _privateConstructorUsedError;
  int get created_at => throw _privateConstructorUsedError;
  List<Division> get school_class => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  int? get exchange_rate => throw _privateConstructorUsedError;
  bool? get is_kindergarten => throw _privateConstructorUsedError;
  List<String>? get school_pages => throw _privateConstructorUsedError;
  String? get school_en_name => throw _privateConstructorUsedError;
  String? get school_qr_code => throw _privateConstructorUsedError;

  /// Serializes this School to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of School
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SchoolCopyWith<School> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchoolCopyWith<$Res> {
  factory $SchoolCopyWith(School value, $Res Function(School) then) =
      _$SchoolCopyWithImpl<$Res, School>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: '__v') int? v,
      String school_name,
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
      SchoolFeatures school_features,
      List<SchoolSubject> school_subjects,
      int created_at,
      List<Division> school_class,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? exchange_rate,
      bool? is_kindergarten,
      List<String>? school_pages,
      String? school_en_name,
      String? school_qr_code});

  $SchoolFeaturesCopyWith<$Res> get school_features;
}

/// @nodoc
class _$SchoolCopyWithImpl<$Res, $Val extends School>
    implements $SchoolCopyWith<$Res> {
  _$SchoolCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of School
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? v = freezed,
    Object? school_name = null,
    Object? school_description = freezed,
    Object? school_logo = freezed,
    Object? school_img = freezed,
    Object? school_website = freezed,
    Object? school_facebook = freezed,
    Object? school_whatsapp = freezed,
    Object? school_phone = freezed,
    Object? school_google_map = freezed,
    Object? school_location = freezed,
    Object? school_currency = freezed,
    Object? school_admin_note = freezed,
    Object? school_features = null,
    Object? school_subjects = null,
    Object? created_at = null,
    Object? school_class = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? exchange_rate = freezed,
    Object? is_kindergarten = freezed,
    Object? school_pages = freezed,
    Object? school_en_name = freezed,
    Object? school_qr_code = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      school_name: null == school_name
          ? _value.school_name
          : school_name // ignore: cast_nullable_to_non_nullable
              as String,
      school_description: freezed == school_description
          ? _value.school_description
          : school_description // ignore: cast_nullable_to_non_nullable
              as String?,
      school_logo: freezed == school_logo
          ? _value.school_logo
          : school_logo // ignore: cast_nullable_to_non_nullable
              as String?,
      school_img: freezed == school_img
          ? _value.school_img
          : school_img // ignore: cast_nullable_to_non_nullable
              as String?,
      school_website: freezed == school_website
          ? _value.school_website
          : school_website // ignore: cast_nullable_to_non_nullable
              as String?,
      school_facebook: freezed == school_facebook
          ? _value.school_facebook
          : school_facebook // ignore: cast_nullable_to_non_nullable
              as String?,
      school_whatsapp: freezed == school_whatsapp
          ? _value.school_whatsapp
          : school_whatsapp // ignore: cast_nullable_to_non_nullable
              as String?,
      school_phone: freezed == school_phone
          ? _value.school_phone
          : school_phone // ignore: cast_nullable_to_non_nullable
              as String?,
      school_google_map: freezed == school_google_map
          ? _value.school_google_map
          : school_google_map // ignore: cast_nullable_to_non_nullable
              as String?,
      school_location: freezed == school_location
          ? _value.school_location
          : school_location // ignore: cast_nullable_to_non_nullable
              as String?,
      school_currency: freezed == school_currency
          ? _value.school_currency
          : school_currency // ignore: cast_nullable_to_non_nullable
              as String?,
      school_admin_note: freezed == school_admin_note
          ? _value.school_admin_note
          : school_admin_note // ignore: cast_nullable_to_non_nullable
              as dynamic,
      school_features: null == school_features
          ? _value.school_features
          : school_features // ignore: cast_nullable_to_non_nullable
              as SchoolFeatures,
      school_subjects: null == school_subjects
          ? _value.school_subjects
          : school_subjects // ignore: cast_nullable_to_non_nullable
              as List<SchoolSubject>,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as int,
      school_class: null == school_class
          ? _value.school_class
          : school_class // ignore: cast_nullable_to_non_nullable
              as List<Division>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      exchange_rate: freezed == exchange_rate
          ? _value.exchange_rate
          : exchange_rate // ignore: cast_nullable_to_non_nullable
              as int?,
      is_kindergarten: freezed == is_kindergarten
          ? _value.is_kindergarten
          : is_kindergarten // ignore: cast_nullable_to_non_nullable
              as bool?,
      school_pages: freezed == school_pages
          ? _value.school_pages
          : school_pages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      school_en_name: freezed == school_en_name
          ? _value.school_en_name
          : school_en_name // ignore: cast_nullable_to_non_nullable
              as String?,
      school_qr_code: freezed == school_qr_code
          ? _value.school_qr_code
          : school_qr_code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of School
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SchoolFeaturesCopyWith<$Res> get school_features {
    return $SchoolFeaturesCopyWith<$Res>(_value.school_features, (value) {
      return _then(_value.copyWith(school_features: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SchoolImplCopyWith<$Res> implements $SchoolCopyWith<$Res> {
  factory _$$SchoolImplCopyWith(
          _$SchoolImpl value, $Res Function(_$SchoolImpl) then) =
      __$$SchoolImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: '__v') int? v,
      String school_name,
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
      SchoolFeatures school_features,
      List<SchoolSubject> school_subjects,
      int created_at,
      List<Division> school_class,
      DateTime? createdAt,
      DateTime? updatedAt,
      int? exchange_rate,
      bool? is_kindergarten,
      List<String>? school_pages,
      String? school_en_name,
      String? school_qr_code});

  @override
  $SchoolFeaturesCopyWith<$Res> get school_features;
}

/// @nodoc
class __$$SchoolImplCopyWithImpl<$Res>
    extends _$SchoolCopyWithImpl<$Res, _$SchoolImpl>
    implements _$$SchoolImplCopyWith<$Res> {
  __$$SchoolImplCopyWithImpl(
      _$SchoolImpl _value, $Res Function(_$SchoolImpl) _then)
      : super(_value, _then);

  /// Create a copy of School
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? v = freezed,
    Object? school_name = null,
    Object? school_description = freezed,
    Object? school_logo = freezed,
    Object? school_img = freezed,
    Object? school_website = freezed,
    Object? school_facebook = freezed,
    Object? school_whatsapp = freezed,
    Object? school_phone = freezed,
    Object? school_google_map = freezed,
    Object? school_location = freezed,
    Object? school_currency = freezed,
    Object? school_admin_note = freezed,
    Object? school_features = null,
    Object? school_subjects = null,
    Object? created_at = null,
    Object? school_class = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? exchange_rate = freezed,
    Object? is_kindergarten = freezed,
    Object? school_pages = freezed,
    Object? school_en_name = freezed,
    Object? school_qr_code = freezed,
  }) {
    return _then(_$SchoolImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
      school_name: null == school_name
          ? _value.school_name
          : school_name // ignore: cast_nullable_to_non_nullable
              as String,
      school_description: freezed == school_description
          ? _value.school_description
          : school_description // ignore: cast_nullable_to_non_nullable
              as String?,
      school_logo: freezed == school_logo
          ? _value.school_logo
          : school_logo // ignore: cast_nullable_to_non_nullable
              as String?,
      school_img: freezed == school_img
          ? _value.school_img
          : school_img // ignore: cast_nullable_to_non_nullable
              as String?,
      school_website: freezed == school_website
          ? _value.school_website
          : school_website // ignore: cast_nullable_to_non_nullable
              as String?,
      school_facebook: freezed == school_facebook
          ? _value.school_facebook
          : school_facebook // ignore: cast_nullable_to_non_nullable
              as String?,
      school_whatsapp: freezed == school_whatsapp
          ? _value.school_whatsapp
          : school_whatsapp // ignore: cast_nullable_to_non_nullable
              as String?,
      school_phone: freezed == school_phone
          ? _value.school_phone
          : school_phone // ignore: cast_nullable_to_non_nullable
              as String?,
      school_google_map: freezed == school_google_map
          ? _value.school_google_map
          : school_google_map // ignore: cast_nullable_to_non_nullable
              as String?,
      school_location: freezed == school_location
          ? _value.school_location
          : school_location // ignore: cast_nullable_to_non_nullable
              as String?,
      school_currency: freezed == school_currency
          ? _value.school_currency
          : school_currency // ignore: cast_nullable_to_non_nullable
              as String?,
      school_admin_note: freezed == school_admin_note
          ? _value.school_admin_note
          : school_admin_note // ignore: cast_nullable_to_non_nullable
              as dynamic,
      school_features: null == school_features
          ? _value.school_features
          : school_features // ignore: cast_nullable_to_non_nullable
              as SchoolFeatures,
      school_subjects: null == school_subjects
          ? _value._school_subjects
          : school_subjects // ignore: cast_nullable_to_non_nullable
              as List<SchoolSubject>,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as int,
      school_class: null == school_class
          ? _value._school_class
          : school_class // ignore: cast_nullable_to_non_nullable
              as List<Division>,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      exchange_rate: freezed == exchange_rate
          ? _value.exchange_rate
          : exchange_rate // ignore: cast_nullable_to_non_nullable
              as int?,
      is_kindergarten: freezed == is_kindergarten
          ? _value.is_kindergarten
          : is_kindergarten // ignore: cast_nullable_to_non_nullable
              as bool?,
      school_pages: freezed == school_pages
          ? _value._school_pages
          : school_pages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      school_en_name: freezed == school_en_name
          ? _value.school_en_name
          : school_en_name // ignore: cast_nullable_to_non_nullable
              as String?,
      school_qr_code: freezed == school_qr_code
          ? _value.school_qr_code
          : school_qr_code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SchoolImpl implements _School {
  const _$SchoolImpl(
      {@JsonKey(name: '_id') this.id,
      @JsonKey(name: '__v') this.v,
      required this.school_name,
      this.school_description,
      this.school_logo,
      this.school_img,
      this.school_website,
      this.school_facebook,
      this.school_whatsapp,
      this.school_phone,
      this.school_google_map,
      this.school_location,
      this.school_currency,
      this.school_admin_note,
      required this.school_features,
      required final List<SchoolSubject> school_subjects,
      required this.created_at,
      required final List<Division> school_class,
      this.createdAt,
      this.updatedAt,
      this.exchange_rate,
      this.is_kindergarten,
      final List<String>? school_pages,
      this.school_en_name,
      this.school_qr_code})
      : _school_subjects = school_subjects,
        _school_class = school_class,
        _school_pages = school_pages;

  factory _$SchoolImpl.fromJson(Map<String, dynamic> json) =>
      _$$SchoolImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: '__v')
  final int? v;
  @override
  final String school_name;
  @override
  final String? school_description;
  @override
  final String? school_logo;
  @override
  final String? school_img;
  @override
  final String? school_website;
  @override
  final String? school_facebook;
  @override
  final String? school_whatsapp;
  @override
  final String? school_phone;
  @override
  final String? school_google_map;
  @override
  final String? school_location;
  @override
  final String? school_currency;
  @override
  final dynamic school_admin_note;
  @override
  final SchoolFeatures school_features;
  final List<SchoolSubject> _school_subjects;
  @override
  List<SchoolSubject> get school_subjects {
    if (_school_subjects is EqualUnmodifiableListView) return _school_subjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_school_subjects);
  }

  @override
  final int created_at;
  final List<Division> _school_class;
  @override
  List<Division> get school_class {
    if (_school_class is EqualUnmodifiableListView) return _school_class;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_school_class);
  }

  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final int? exchange_rate;
  @override
  final bool? is_kindergarten;
  final List<String>? _school_pages;
  @override
  List<String>? get school_pages {
    final value = _school_pages;
    if (value == null) return null;
    if (_school_pages is EqualUnmodifiableListView) return _school_pages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? school_en_name;
  @override
  final String? school_qr_code;

  @override
  String toString() {
    return 'School(id: $id, v: $v, school_name: $school_name, school_description: $school_description, school_logo: $school_logo, school_img: $school_img, school_website: $school_website, school_facebook: $school_facebook, school_whatsapp: $school_whatsapp, school_phone: $school_phone, school_google_map: $school_google_map, school_location: $school_location, school_currency: $school_currency, school_admin_note: $school_admin_note, school_features: $school_features, school_subjects: $school_subjects, created_at: $created_at, school_class: $school_class, createdAt: $createdAt, updatedAt: $updatedAt, exchange_rate: $exchange_rate, is_kindergarten: $is_kindergarten, school_pages: $school_pages, school_en_name: $school_en_name, school_qr_code: $school_qr_code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchoolImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.school_name, school_name) ||
                other.school_name == school_name) &&
            (identical(other.school_description, school_description) ||
                other.school_description == school_description) &&
            (identical(other.school_logo, school_logo) ||
                other.school_logo == school_logo) &&
            (identical(other.school_img, school_img) ||
                other.school_img == school_img) &&
            (identical(other.school_website, school_website) ||
                other.school_website == school_website) &&
            (identical(other.school_facebook, school_facebook) ||
                other.school_facebook == school_facebook) &&
            (identical(other.school_whatsapp, school_whatsapp) ||
                other.school_whatsapp == school_whatsapp) &&
            (identical(other.school_phone, school_phone) ||
                other.school_phone == school_phone) &&
            (identical(other.school_google_map, school_google_map) ||
                other.school_google_map == school_google_map) &&
            (identical(other.school_location, school_location) ||
                other.school_location == school_location) &&
            (identical(other.school_currency, school_currency) ||
                other.school_currency == school_currency) &&
            const DeepCollectionEquality()
                .equals(other.school_admin_note, school_admin_note) &&
            (identical(other.school_features, school_features) ||
                other.school_features == school_features) &&
            const DeepCollectionEquality()
                .equals(other._school_subjects, _school_subjects) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            const DeepCollectionEquality()
                .equals(other._school_class, _school_class) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.exchange_rate, exchange_rate) ||
                other.exchange_rate == exchange_rate) &&
            (identical(other.is_kindergarten, is_kindergarten) ||
                other.is_kindergarten == is_kindergarten) &&
            const DeepCollectionEquality()
                .equals(other._school_pages, _school_pages) &&
            (identical(other.school_en_name, school_en_name) ||
                other.school_en_name == school_en_name) &&
            (identical(other.school_qr_code, school_qr_code) ||
                other.school_qr_code == school_qr_code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        v,
        school_name,
        school_description,
        school_logo,
        school_img,
        school_website,
        school_facebook,
        school_whatsapp,
        school_phone,
        school_google_map,
        school_location,
        school_currency,
        const DeepCollectionEquality().hash(school_admin_note),
        school_features,
        const DeepCollectionEquality().hash(_school_subjects),
        created_at,
        const DeepCollectionEquality().hash(_school_class),
        createdAt,
        updatedAt,
        exchange_rate,
        is_kindergarten,
        const DeepCollectionEquality().hash(_school_pages),
        school_en_name,
        school_qr_code
      ]);

  /// Create a copy of School
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SchoolImplCopyWith<_$SchoolImpl> get copyWith =>
      __$$SchoolImplCopyWithImpl<_$SchoolImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SchoolImplToJson(
      this,
    );
  }
}

abstract class _School implements School {
  const factory _School(
      {@JsonKey(name: '_id') final String? id,
      @JsonKey(name: '__v') final int? v,
      required final String school_name,
      final String? school_description,
      final String? school_logo,
      final String? school_img,
      final String? school_website,
      final String? school_facebook,
      final String? school_whatsapp,
      final String? school_phone,
      final String? school_google_map,
      final String? school_location,
      final String? school_currency,
      final dynamic school_admin_note,
      required final SchoolFeatures school_features,
      required final List<SchoolSubject> school_subjects,
      required final int created_at,
      required final List<Division> school_class,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final int? exchange_rate,
      final bool? is_kindergarten,
      final List<String>? school_pages,
      final String? school_en_name,
      final String? school_qr_code}) = _$SchoolImpl;

  factory _School.fromJson(Map<String, dynamic> json) = _$SchoolImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(name: '__v')
  int? get v;
  @override
  String get school_name;
  @override
  String? get school_description;
  @override
  String? get school_logo;
  @override
  String? get school_img;
  @override
  String? get school_website;
  @override
  String? get school_facebook;
  @override
  String? get school_whatsapp;
  @override
  String? get school_phone;
  @override
  String? get school_google_map;
  @override
  String? get school_location;
  @override
  String? get school_currency;
  @override
  dynamic get school_admin_note;
  @override
  SchoolFeatures get school_features;
  @override
  List<SchoolSubject> get school_subjects;
  @override
  int get created_at;
  @override
  List<Division> get school_class;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  int? get exchange_rate;
  @override
  bool? get is_kindergarten;
  @override
  List<String>? get school_pages;
  @override
  String? get school_en_name;
  @override
  String? get school_qr_code;

  /// Create a copy of School
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SchoolImplCopyWith<_$SchoolImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SchoolFeatures _$SchoolFeaturesFromJson(Map<String, dynamic> json) {
  return _SchoolFeatures.fromJson(json);
}

/// @nodoc
mixin _$SchoolFeatures {
  bool get features_finger_id => throw _privateConstructorUsedError;
  bool get features_absence => throw _privateConstructorUsedError;
  bool get features_teachers_absence => throw _privateConstructorUsedError;
  bool get features_review => throw _privateConstructorUsedError;
  bool get features_dailyExam => throw _privateConstructorUsedError;
  bool get features_drivers => throw _privateConstructorUsedError;
  bool get features_exams => throw _privateConstructorUsedError;
  bool get features_notifications => throw _privateConstructorUsedError;
  bool get features_chat => throw _privateConstructorUsedError;
  bool get features_gps => throw _privateConstructorUsedError;
  bool get features_schedule_weekly => throw _privateConstructorUsedError;
  bool get features_live => throw _privateConstructorUsedError;
  bool get features_latest_news => throw _privateConstructorUsedError;
  bool get features_degrees => throw _privateConstructorUsedError;
  bool get features_subject => throw _privateConstructorUsedError;
  bool get features_employee => throw _privateConstructorUsedError;
  bool get features_accountant => throw _privateConstructorUsedError;

  /// Serializes this SchoolFeatures to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SchoolFeatures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SchoolFeaturesCopyWith<SchoolFeatures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchoolFeaturesCopyWith<$Res> {
  factory $SchoolFeaturesCopyWith(
          SchoolFeatures value, $Res Function(SchoolFeatures) then) =
      _$SchoolFeaturesCopyWithImpl<$Res, SchoolFeatures>;
  @useResult
  $Res call(
      {bool features_finger_id,
      bool features_absence,
      bool features_teachers_absence,
      bool features_review,
      bool features_dailyExam,
      bool features_drivers,
      bool features_exams,
      bool features_notifications,
      bool features_chat,
      bool features_gps,
      bool features_schedule_weekly,
      bool features_live,
      bool features_latest_news,
      bool features_degrees,
      bool features_subject,
      bool features_employee,
      bool features_accountant});
}

/// @nodoc
class _$SchoolFeaturesCopyWithImpl<$Res, $Val extends SchoolFeatures>
    implements $SchoolFeaturesCopyWith<$Res> {
  _$SchoolFeaturesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SchoolFeatures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? features_finger_id = null,
    Object? features_absence = null,
    Object? features_teachers_absence = null,
    Object? features_review = null,
    Object? features_dailyExam = null,
    Object? features_drivers = null,
    Object? features_exams = null,
    Object? features_notifications = null,
    Object? features_chat = null,
    Object? features_gps = null,
    Object? features_schedule_weekly = null,
    Object? features_live = null,
    Object? features_latest_news = null,
    Object? features_degrees = null,
    Object? features_subject = null,
    Object? features_employee = null,
    Object? features_accountant = null,
  }) {
    return _then(_value.copyWith(
      features_finger_id: null == features_finger_id
          ? _value.features_finger_id
          : features_finger_id // ignore: cast_nullable_to_non_nullable
              as bool,
      features_absence: null == features_absence
          ? _value.features_absence
          : features_absence // ignore: cast_nullable_to_non_nullable
              as bool,
      features_teachers_absence: null == features_teachers_absence
          ? _value.features_teachers_absence
          : features_teachers_absence // ignore: cast_nullable_to_non_nullable
              as bool,
      features_review: null == features_review
          ? _value.features_review
          : features_review // ignore: cast_nullable_to_non_nullable
              as bool,
      features_dailyExam: null == features_dailyExam
          ? _value.features_dailyExam
          : features_dailyExam // ignore: cast_nullable_to_non_nullable
              as bool,
      features_drivers: null == features_drivers
          ? _value.features_drivers
          : features_drivers // ignore: cast_nullable_to_non_nullable
              as bool,
      features_exams: null == features_exams
          ? _value.features_exams
          : features_exams // ignore: cast_nullable_to_non_nullable
              as bool,
      features_notifications: null == features_notifications
          ? _value.features_notifications
          : features_notifications // ignore: cast_nullable_to_non_nullable
              as bool,
      features_chat: null == features_chat
          ? _value.features_chat
          : features_chat // ignore: cast_nullable_to_non_nullable
              as bool,
      features_gps: null == features_gps
          ? _value.features_gps
          : features_gps // ignore: cast_nullable_to_non_nullable
              as bool,
      features_schedule_weekly: null == features_schedule_weekly
          ? _value.features_schedule_weekly
          : features_schedule_weekly // ignore: cast_nullable_to_non_nullable
              as bool,
      features_live: null == features_live
          ? _value.features_live
          : features_live // ignore: cast_nullable_to_non_nullable
              as bool,
      features_latest_news: null == features_latest_news
          ? _value.features_latest_news
          : features_latest_news // ignore: cast_nullable_to_non_nullable
              as bool,
      features_degrees: null == features_degrees
          ? _value.features_degrees
          : features_degrees // ignore: cast_nullable_to_non_nullable
              as bool,
      features_subject: null == features_subject
          ? _value.features_subject
          : features_subject // ignore: cast_nullable_to_non_nullable
              as bool,
      features_employee: null == features_employee
          ? _value.features_employee
          : features_employee // ignore: cast_nullable_to_non_nullable
              as bool,
      features_accountant: null == features_accountant
          ? _value.features_accountant
          : features_accountant // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SchoolFeaturesImplCopyWith<$Res>
    implements $SchoolFeaturesCopyWith<$Res> {
  factory _$$SchoolFeaturesImplCopyWith(_$SchoolFeaturesImpl value,
          $Res Function(_$SchoolFeaturesImpl) then) =
      __$$SchoolFeaturesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool features_finger_id,
      bool features_absence,
      bool features_teachers_absence,
      bool features_review,
      bool features_dailyExam,
      bool features_drivers,
      bool features_exams,
      bool features_notifications,
      bool features_chat,
      bool features_gps,
      bool features_schedule_weekly,
      bool features_live,
      bool features_latest_news,
      bool features_degrees,
      bool features_subject,
      bool features_employee,
      bool features_accountant});
}

/// @nodoc
class __$$SchoolFeaturesImplCopyWithImpl<$Res>
    extends _$SchoolFeaturesCopyWithImpl<$Res, _$SchoolFeaturesImpl>
    implements _$$SchoolFeaturesImplCopyWith<$Res> {
  __$$SchoolFeaturesImplCopyWithImpl(
      _$SchoolFeaturesImpl _value, $Res Function(_$SchoolFeaturesImpl) _then)
      : super(_value, _then);

  /// Create a copy of SchoolFeatures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? features_finger_id = null,
    Object? features_absence = null,
    Object? features_teachers_absence = null,
    Object? features_review = null,
    Object? features_dailyExam = null,
    Object? features_drivers = null,
    Object? features_exams = null,
    Object? features_notifications = null,
    Object? features_chat = null,
    Object? features_gps = null,
    Object? features_schedule_weekly = null,
    Object? features_live = null,
    Object? features_latest_news = null,
    Object? features_degrees = null,
    Object? features_subject = null,
    Object? features_employee = null,
    Object? features_accountant = null,
  }) {
    return _then(_$SchoolFeaturesImpl(
      features_finger_id: null == features_finger_id
          ? _value.features_finger_id
          : features_finger_id // ignore: cast_nullable_to_non_nullable
              as bool,
      features_absence: null == features_absence
          ? _value.features_absence
          : features_absence // ignore: cast_nullable_to_non_nullable
              as bool,
      features_teachers_absence: null == features_teachers_absence
          ? _value.features_teachers_absence
          : features_teachers_absence // ignore: cast_nullable_to_non_nullable
              as bool,
      features_review: null == features_review
          ? _value.features_review
          : features_review // ignore: cast_nullable_to_non_nullable
              as bool,
      features_dailyExam: null == features_dailyExam
          ? _value.features_dailyExam
          : features_dailyExam // ignore: cast_nullable_to_non_nullable
              as bool,
      features_drivers: null == features_drivers
          ? _value.features_drivers
          : features_drivers // ignore: cast_nullable_to_non_nullable
              as bool,
      features_exams: null == features_exams
          ? _value.features_exams
          : features_exams // ignore: cast_nullable_to_non_nullable
              as bool,
      features_notifications: null == features_notifications
          ? _value.features_notifications
          : features_notifications // ignore: cast_nullable_to_non_nullable
              as bool,
      features_chat: null == features_chat
          ? _value.features_chat
          : features_chat // ignore: cast_nullable_to_non_nullable
              as bool,
      features_gps: null == features_gps
          ? _value.features_gps
          : features_gps // ignore: cast_nullable_to_non_nullable
              as bool,
      features_schedule_weekly: null == features_schedule_weekly
          ? _value.features_schedule_weekly
          : features_schedule_weekly // ignore: cast_nullable_to_non_nullable
              as bool,
      features_live: null == features_live
          ? _value.features_live
          : features_live // ignore: cast_nullable_to_non_nullable
              as bool,
      features_latest_news: null == features_latest_news
          ? _value.features_latest_news
          : features_latest_news // ignore: cast_nullable_to_non_nullable
              as bool,
      features_degrees: null == features_degrees
          ? _value.features_degrees
          : features_degrees // ignore: cast_nullable_to_non_nullable
              as bool,
      features_subject: null == features_subject
          ? _value.features_subject
          : features_subject // ignore: cast_nullable_to_non_nullable
              as bool,
      features_employee: null == features_employee
          ? _value.features_employee
          : features_employee // ignore: cast_nullable_to_non_nullable
              as bool,
      features_accountant: null == features_accountant
          ? _value.features_accountant
          : features_accountant // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SchoolFeaturesImpl implements _SchoolFeatures {
  const _$SchoolFeaturesImpl(
      {required this.features_finger_id,
      required this.features_absence,
      required this.features_teachers_absence,
      required this.features_review,
      required this.features_dailyExam,
      required this.features_drivers,
      required this.features_exams,
      required this.features_notifications,
      required this.features_chat,
      required this.features_gps,
      required this.features_schedule_weekly,
      required this.features_live,
      required this.features_latest_news,
      required this.features_degrees,
      required this.features_subject,
      required this.features_employee,
      required this.features_accountant});

  factory _$SchoolFeaturesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SchoolFeaturesImplFromJson(json);

  @override
  final bool features_finger_id;
  @override
  final bool features_absence;
  @override
  final bool features_teachers_absence;
  @override
  final bool features_review;
  @override
  final bool features_dailyExam;
  @override
  final bool features_drivers;
  @override
  final bool features_exams;
  @override
  final bool features_notifications;
  @override
  final bool features_chat;
  @override
  final bool features_gps;
  @override
  final bool features_schedule_weekly;
  @override
  final bool features_live;
  @override
  final bool features_latest_news;
  @override
  final bool features_degrees;
  @override
  final bool features_subject;
  @override
  final bool features_employee;
  @override
  final bool features_accountant;

  @override
  String toString() {
    return 'SchoolFeatures(features_finger_id: $features_finger_id, features_absence: $features_absence, features_teachers_absence: $features_teachers_absence, features_review: $features_review, features_dailyExam: $features_dailyExam, features_drivers: $features_drivers, features_exams: $features_exams, features_notifications: $features_notifications, features_chat: $features_chat, features_gps: $features_gps, features_schedule_weekly: $features_schedule_weekly, features_live: $features_live, features_latest_news: $features_latest_news, features_degrees: $features_degrees, features_subject: $features_subject, features_employee: $features_employee, features_accountant: $features_accountant)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchoolFeaturesImpl &&
            (identical(other.features_finger_id, features_finger_id) ||
                other.features_finger_id == features_finger_id) &&
            (identical(other.features_absence, features_absence) ||
                other.features_absence == features_absence) &&
            (identical(other.features_teachers_absence,
                    features_teachers_absence) ||
                other.features_teachers_absence == features_teachers_absence) &&
            (identical(other.features_review, features_review) ||
                other.features_review == features_review) &&
            (identical(other.features_dailyExam, features_dailyExam) ||
                other.features_dailyExam == features_dailyExam) &&
            (identical(other.features_drivers, features_drivers) ||
                other.features_drivers == features_drivers) &&
            (identical(other.features_exams, features_exams) ||
                other.features_exams == features_exams) &&
            (identical(other.features_notifications, features_notifications) ||
                other.features_notifications == features_notifications) &&
            (identical(other.features_chat, features_chat) ||
                other.features_chat == features_chat) &&
            (identical(other.features_gps, features_gps) ||
                other.features_gps == features_gps) &&
            (identical(
                    other.features_schedule_weekly, features_schedule_weekly) ||
                other.features_schedule_weekly == features_schedule_weekly) &&
            (identical(other.features_live, features_live) ||
                other.features_live == features_live) &&
            (identical(other.features_latest_news, features_latest_news) ||
                other.features_latest_news == features_latest_news) &&
            (identical(other.features_degrees, features_degrees) ||
                other.features_degrees == features_degrees) &&
            (identical(other.features_subject, features_subject) ||
                other.features_subject == features_subject) &&
            (identical(other.features_employee, features_employee) ||
                other.features_employee == features_employee) &&
            (identical(other.features_accountant, features_accountant) ||
                other.features_accountant == features_accountant));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      features_finger_id,
      features_absence,
      features_teachers_absence,
      features_review,
      features_dailyExam,
      features_drivers,
      features_exams,
      features_notifications,
      features_chat,
      features_gps,
      features_schedule_weekly,
      features_live,
      features_latest_news,
      features_degrees,
      features_subject,
      features_employee,
      features_accountant);

  /// Create a copy of SchoolFeatures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SchoolFeaturesImplCopyWith<_$SchoolFeaturesImpl> get copyWith =>
      __$$SchoolFeaturesImplCopyWithImpl<_$SchoolFeaturesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SchoolFeaturesImplToJson(
      this,
    );
  }
}

abstract class _SchoolFeatures implements SchoolFeatures {
  const factory _SchoolFeatures(
      {required final bool features_finger_id,
      required final bool features_absence,
      required final bool features_teachers_absence,
      required final bool features_review,
      required final bool features_dailyExam,
      required final bool features_drivers,
      required final bool features_exams,
      required final bool features_notifications,
      required final bool features_chat,
      required final bool features_gps,
      required final bool features_schedule_weekly,
      required final bool features_live,
      required final bool features_latest_news,
      required final bool features_degrees,
      required final bool features_subject,
      required final bool features_employee,
      required final bool features_accountant}) = _$SchoolFeaturesImpl;

  factory _SchoolFeatures.fromJson(Map<String, dynamic> json) =
      _$SchoolFeaturesImpl.fromJson;

  @override
  bool get features_finger_id;
  @override
  bool get features_absence;
  @override
  bool get features_teachers_absence;
  @override
  bool get features_review;
  @override
  bool get features_dailyExam;
  @override
  bool get features_drivers;
  @override
  bool get features_exams;
  @override
  bool get features_notifications;
  @override
  bool get features_chat;
  @override
  bool get features_gps;
  @override
  bool get features_schedule_weekly;
  @override
  bool get features_live;
  @override
  bool get features_latest_news;
  @override
  bool get features_degrees;
  @override
  bool get features_subject;
  @override
  bool get features_employee;
  @override
  bool get features_accountant;

  /// Create a copy of SchoolFeatures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SchoolFeaturesImplCopyWith<_$SchoolFeaturesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SchoolSubject _$SchoolSubjectFromJson(Map<String, dynamic> json) {
  return _SchoolSubject.fromJson(json);
}

/// @nodoc
mixin _$SchoolSubject {
  String get subject_name => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;

  /// Serializes this SchoolSubject to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SchoolSubject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SchoolSubjectCopyWith<SchoolSubject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchoolSubjectCopyWith<$Res> {
  factory $SchoolSubjectCopyWith(
          SchoolSubject value, $Res Function(SchoolSubject) then) =
      _$SchoolSubjectCopyWithImpl<$Res, SchoolSubject>;
  @useResult
  $Res call({String subject_name, @JsonKey(name: '_id') String? id});
}

/// @nodoc
class _$SchoolSubjectCopyWithImpl<$Res, $Val extends SchoolSubject>
    implements $SchoolSubjectCopyWith<$Res> {
  _$SchoolSubjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SchoolSubject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject_name = null,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      subject_name: null == subject_name
          ? _value.subject_name
          : subject_name // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SchoolSubjectImplCopyWith<$Res>
    implements $SchoolSubjectCopyWith<$Res> {
  factory _$$SchoolSubjectImplCopyWith(
          _$SchoolSubjectImpl value, $Res Function(_$SchoolSubjectImpl) then) =
      __$$SchoolSubjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String subject_name, @JsonKey(name: '_id') String? id});
}

/// @nodoc
class __$$SchoolSubjectImplCopyWithImpl<$Res>
    extends _$SchoolSubjectCopyWithImpl<$Res, _$SchoolSubjectImpl>
    implements _$$SchoolSubjectImplCopyWith<$Res> {
  __$$SchoolSubjectImplCopyWithImpl(
      _$SchoolSubjectImpl _value, $Res Function(_$SchoolSubjectImpl) _then)
      : super(_value, _then);

  /// Create a copy of SchoolSubject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject_name = null,
    Object? id = freezed,
  }) {
    return _then(_$SchoolSubjectImpl(
      subject_name: null == subject_name
          ? _value.subject_name
          : subject_name // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SchoolSubjectImpl implements _SchoolSubject {
  const _$SchoolSubjectImpl(
      {required this.subject_name, @JsonKey(name: '_id') this.id});

  factory _$SchoolSubjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$SchoolSubjectImplFromJson(json);

  @override
  final String subject_name;
  @override
  @JsonKey(name: '_id')
  final String? id;

  @override
  String toString() {
    return 'SchoolSubject(subject_name: $subject_name, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchoolSubjectImpl &&
            (identical(other.subject_name, subject_name) ||
                other.subject_name == subject_name) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, subject_name, id);

  /// Create a copy of SchoolSubject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SchoolSubjectImplCopyWith<_$SchoolSubjectImpl> get copyWith =>
      __$$SchoolSubjectImplCopyWithImpl<_$SchoolSubjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SchoolSubjectImplToJson(
      this,
    );
  }
}

abstract class _SchoolSubject implements SchoolSubject {
  const factory _SchoolSubject(
      {required final String subject_name,
      @JsonKey(name: '_id') final String? id}) = _$SchoolSubjectImpl;

  factory _SchoolSubject.fromJson(Map<String, dynamic> json) =
      _$SchoolSubjectImpl.fromJson;

  @override
  String get subject_name;
  @override
  @JsonKey(name: '_id')
  String? get id;

  /// Create a copy of SchoolSubject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SchoolSubjectImplCopyWith<_$SchoolSubjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Setting _$SettingFromJson(Map<String, dynamic> json) {
  return _Setting.fromJson(json);
}

/// @nodoc
mixin _$Setting {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String get setting_year => throw _privateConstructorUsedError;
  int? get created_at => throw _privateConstructorUsedError;

  /// Serializes this Setting to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Setting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingCopyWith<Setting> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingCopyWith<$Res> {
  factory $SettingCopyWith(Setting value, $Res Function(Setting) then) =
      _$SettingCopyWithImpl<$Res, Setting>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id, String setting_year, int? created_at});
}

/// @nodoc
class _$SettingCopyWithImpl<$Res, $Val extends Setting>
    implements $SettingCopyWith<$Res> {
  _$SettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Setting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? setting_year = null,
    Object? created_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      setting_year: null == setting_year
          ? _value.setting_year
          : setting_year // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingImplCopyWith<$Res> implements $SettingCopyWith<$Res> {
  factory _$$SettingImplCopyWith(
          _$SettingImpl value, $Res Function(_$SettingImpl) then) =
      __$$SettingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id, String setting_year, int? created_at});
}

/// @nodoc
class __$$SettingImplCopyWithImpl<$Res>
    extends _$SettingCopyWithImpl<$Res, _$SettingImpl>
    implements _$$SettingImplCopyWith<$Res> {
  __$$SettingImplCopyWithImpl(
      _$SettingImpl _value, $Res Function(_$SettingImpl) _then)
      : super(_value, _then);

  /// Create a copy of Setting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? setting_year = null,
    Object? created_at = freezed,
  }) {
    return _then(_$SettingImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      setting_year: null == setting_year
          ? _value.setting_year
          : setting_year // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SettingImpl implements _Setting {
  const _$SettingImpl(
      {@JsonKey(name: '_id') this.id,
      required this.setting_year,
      this.created_at});

  factory _$SettingImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String setting_year;
  @override
  final int? created_at;

  @override
  String toString() {
    return 'Setting(id: $id, setting_year: $setting_year, created_at: $created_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.setting_year, setting_year) ||
                other.setting_year == setting_year) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, setting_year, created_at);

  /// Create a copy of Setting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingImplCopyWith<_$SettingImpl> get copyWith =>
      __$$SettingImplCopyWithImpl<_$SettingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingImplToJson(
      this,
    );
  }
}

abstract class _Setting implements Setting {
  const factory _Setting(
      {@JsonKey(name: '_id') final String? id,
      required final String setting_year,
      final int? created_at}) = _$SettingImpl;

  factory _Setting.fromJson(Map<String, dynamic> json) = _$SettingImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String get setting_year;
  @override
  int? get created_at;

  /// Create a copy of Setting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingImplCopyWith<_$SettingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
