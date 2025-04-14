// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) {
  return _LoginResponse.fromJson(json);
}

/// @nodoc
mixin _$LoginResponse {
  LoginModel get results => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;

  /// Serializes this LoginResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginResponseCopyWith<LoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseCopyWith<$Res> {
  factory $LoginResponseCopyWith(
          LoginResponse value, $Res Function(LoginResponse) then) =
      _$LoginResponseCopyWithImpl<$Res, LoginResponse>;
  @useResult
  $Res call({LoginModel results, bool error});

  $LoginModelCopyWith<$Res> get results;
}

/// @nodoc
class _$LoginResponseCopyWithImpl<$Res, $Val extends LoginResponse>
    implements $LoginResponseCopyWith<$Res> {
  _$LoginResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as LoginModel,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginModelCopyWith<$Res> get results {
    return $LoginModelCopyWith<$Res>(_value.results, (value) {
      return _then(_value.copyWith(results: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginResponseImplCopyWith<$Res>
    implements $LoginResponseCopyWith<$Res> {
  factory _$$LoginResponseImplCopyWith(
          _$LoginResponseImpl value, $Res Function(_$LoginResponseImpl) then) =
      __$$LoginResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoginModel results, bool error});

  @override
  $LoginModelCopyWith<$Res> get results;
}

/// @nodoc
class __$$LoginResponseImplCopyWithImpl<$Res>
    extends _$LoginResponseCopyWithImpl<$Res, _$LoginResponseImpl>
    implements _$$LoginResponseImplCopyWith<$Res> {
  __$$LoginResponseImplCopyWithImpl(
      _$LoginResponseImpl _value, $Res Function(_$LoginResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? error = null,
  }) {
    return _then(_$LoginResponseImpl(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as LoginModel,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginResponseImpl implements _LoginResponse {
  _$LoginResponseImpl({required this.results, required this.error});

  factory _$LoginResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResponseImplFromJson(json);

  @override
  final LoginModel results;
  @override
  final bool error;

  @override
  String toString() {
    return 'LoginResponse(results: $results, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResponseImpl &&
            (identical(other.results, results) || other.results == results) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, results, error);

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResponseImplCopyWith<_$LoginResponseImpl> get copyWith =>
      __$$LoginResponseImplCopyWithImpl<_$LoginResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResponseImplToJson(
      this,
    );
  }
}

abstract class _LoginResponse implements LoginResponse {
  factory _LoginResponse(
      {required final LoginModel results,
      required final bool error}) = _$LoginResponseImpl;

  factory _LoginResponse.fromJson(Map<String, dynamic> json) =
      _$LoginResponseImpl.fromJson;

  @override
  LoginModel get results;
  @override
  bool get error;

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginResponseImplCopyWith<_$LoginResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginModel _$LoginModelFromJson(Map<String, dynamic> json) {
  return _LoginModel.fromJson(json);
}

/// @nodoc
mixin _$LoginModel {
  String get token => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_name')
  String get accountName => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_mobile')
  String get accountMobile => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_type')
  String get accountType => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_email')
  String get accountEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_birthday')
  DateTime get accountBirthday => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_address')
  String get accountAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_division')
  List<AccountDivision> get accountDivision =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'account_division_current')
  AccountDivision get accountDivisionCurrent =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'is_kindergarten')
  bool get isKindergarten =>
      throw _privateConstructorUsedError; //refreshToken not found in response this for me
  String? get refreshToken => throw _privateConstructorUsedError;

  /// Serializes this LoginModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginModelCopyWith<LoginModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginModelCopyWith<$Res> {
  factory $LoginModelCopyWith(
          LoginModel value, $Res Function(LoginModel) then) =
      _$LoginModelCopyWithImpl<$Res, LoginModel>;
  @useResult
  $Res call(
      {String token,
      @JsonKey(name: '_id') String id,
      @JsonKey(name: 'account_name') String accountName,
      @JsonKey(name: 'account_mobile') String accountMobile,
      @JsonKey(name: 'account_type') String accountType,
      @JsonKey(name: 'account_email') String accountEmail,
      @JsonKey(name: 'account_birthday') DateTime accountBirthday,
      @JsonKey(name: 'account_address') String accountAddress,
      @JsonKey(name: 'account_division') List<AccountDivision> accountDivision,
      @JsonKey(name: 'account_division_current')
      AccountDivision accountDivisionCurrent,
      @JsonKey(name: 'is_kindergarten') bool isKindergarten,
      String? refreshToken});

  $AccountDivisionCopyWith<$Res> get accountDivisionCurrent;
}

/// @nodoc
class _$LoginModelCopyWithImpl<$Res, $Val extends LoginModel>
    implements $LoginModelCopyWith<$Res> {
  _$LoginModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? id = null,
    Object? accountName = null,
    Object? accountMobile = null,
    Object? accountType = null,
    Object? accountEmail = null,
    Object? accountBirthday = null,
    Object? accountAddress = null,
    Object? accountDivision = null,
    Object? accountDivisionCurrent = null,
    Object? isKindergarten = null,
    Object? refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      accountMobile: null == accountMobile
          ? _value.accountMobile
          : accountMobile // ignore: cast_nullable_to_non_nullable
              as String,
      accountType: null == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as String,
      accountEmail: null == accountEmail
          ? _value.accountEmail
          : accountEmail // ignore: cast_nullable_to_non_nullable
              as String,
      accountBirthday: null == accountBirthday
          ? _value.accountBirthday
          : accountBirthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      accountAddress: null == accountAddress
          ? _value.accountAddress
          : accountAddress // ignore: cast_nullable_to_non_nullable
              as String,
      accountDivision: null == accountDivision
          ? _value.accountDivision
          : accountDivision // ignore: cast_nullable_to_non_nullable
              as List<AccountDivision>,
      accountDivisionCurrent: null == accountDivisionCurrent
          ? _value.accountDivisionCurrent
          : accountDivisionCurrent // ignore: cast_nullable_to_non_nullable
              as AccountDivision,
      isKindergarten: null == isKindergarten
          ? _value.isKindergarten
          : isKindergarten // ignore: cast_nullable_to_non_nullable
              as bool,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of LoginModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountDivisionCopyWith<$Res> get accountDivisionCurrent {
    return $AccountDivisionCopyWith<$Res>(_value.accountDivisionCurrent,
        (value) {
      return _then(_value.copyWith(accountDivisionCurrent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginModelImplCopyWith<$Res>
    implements $LoginModelCopyWith<$Res> {
  factory _$$LoginModelImplCopyWith(
          _$LoginModelImpl value, $Res Function(_$LoginModelImpl) then) =
      __$$LoginModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String token,
      @JsonKey(name: '_id') String id,
      @JsonKey(name: 'account_name') String accountName,
      @JsonKey(name: 'account_mobile') String accountMobile,
      @JsonKey(name: 'account_type') String accountType,
      @JsonKey(name: 'account_email') String accountEmail,
      @JsonKey(name: 'account_birthday') DateTime accountBirthday,
      @JsonKey(name: 'account_address') String accountAddress,
      @JsonKey(name: 'account_division') List<AccountDivision> accountDivision,
      @JsonKey(name: 'account_division_current')
      AccountDivision accountDivisionCurrent,
      @JsonKey(name: 'is_kindergarten') bool isKindergarten,
      String? refreshToken});

  @override
  $AccountDivisionCopyWith<$Res> get accountDivisionCurrent;
}

/// @nodoc
class __$$LoginModelImplCopyWithImpl<$Res>
    extends _$LoginModelCopyWithImpl<$Res, _$LoginModelImpl>
    implements _$$LoginModelImplCopyWith<$Res> {
  __$$LoginModelImplCopyWithImpl(
      _$LoginModelImpl _value, $Res Function(_$LoginModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? id = null,
    Object? accountName = null,
    Object? accountMobile = null,
    Object? accountType = null,
    Object? accountEmail = null,
    Object? accountBirthday = null,
    Object? accountAddress = null,
    Object? accountDivision = null,
    Object? accountDivisionCurrent = null,
    Object? isKindergarten = null,
    Object? refreshToken = freezed,
  }) {
    return _then(_$LoginModelImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      accountMobile: null == accountMobile
          ? _value.accountMobile
          : accountMobile // ignore: cast_nullable_to_non_nullable
              as String,
      accountType: null == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as String,
      accountEmail: null == accountEmail
          ? _value.accountEmail
          : accountEmail // ignore: cast_nullable_to_non_nullable
              as String,
      accountBirthday: null == accountBirthday
          ? _value.accountBirthday
          : accountBirthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      accountAddress: null == accountAddress
          ? _value.accountAddress
          : accountAddress // ignore: cast_nullable_to_non_nullable
              as String,
      accountDivision: null == accountDivision
          ? _value._accountDivision
          : accountDivision // ignore: cast_nullable_to_non_nullable
              as List<AccountDivision>,
      accountDivisionCurrent: null == accountDivisionCurrent
          ? _value.accountDivisionCurrent
          : accountDivisionCurrent // ignore: cast_nullable_to_non_nullable
              as AccountDivision,
      isKindergarten: null == isKindergarten
          ? _value.isKindergarten
          : isKindergarten // ignore: cast_nullable_to_non_nullable
              as bool,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginModelImpl extends _LoginModel {
  _$LoginModelImpl(
      {required this.token,
      @JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'account_name') required this.accountName,
      @JsonKey(name: 'account_mobile') required this.accountMobile,
      @JsonKey(name: 'account_type') required this.accountType,
      @JsonKey(name: 'account_email') required this.accountEmail,
      @JsonKey(name: 'account_birthday') required this.accountBirthday,
      @JsonKey(name: 'account_address') required this.accountAddress,
      @JsonKey(name: 'account_division')
      required final List<AccountDivision> accountDivision,
      @JsonKey(name: 'account_division_current')
      required this.accountDivisionCurrent,
      @JsonKey(name: 'is_kindergarten') required this.isKindergarten,
      this.refreshToken})
      : _accountDivision = accountDivision,
        super._();

  factory _$LoginModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginModelImplFromJson(json);

  @override
  final String token;
  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(name: 'account_name')
  final String accountName;
  @override
  @JsonKey(name: 'account_mobile')
  final String accountMobile;
  @override
  @JsonKey(name: 'account_type')
  final String accountType;
  @override
  @JsonKey(name: 'account_email')
  final String accountEmail;
  @override
  @JsonKey(name: 'account_birthday')
  final DateTime accountBirthday;
  @override
  @JsonKey(name: 'account_address')
  final String accountAddress;
  final List<AccountDivision> _accountDivision;
  @override
  @JsonKey(name: 'account_division')
  List<AccountDivision> get accountDivision {
    if (_accountDivision is EqualUnmodifiableListView) return _accountDivision;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accountDivision);
  }

  @override
  @JsonKey(name: 'account_division_current')
  final AccountDivision accountDivisionCurrent;
  @override
  @JsonKey(name: 'is_kindergarten')
  final bool isKindergarten;
//refreshToken not found in response this for me
  @override
  final String? refreshToken;

  @override
  String toString() {
    return 'LoginModel(token: $token, id: $id, accountName: $accountName, accountMobile: $accountMobile, accountType: $accountType, accountEmail: $accountEmail, accountBirthday: $accountBirthday, accountAddress: $accountAddress, accountDivision: $accountDivision, accountDivisionCurrent: $accountDivisionCurrent, isKindergarten: $isKindergarten, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginModelImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.accountMobile, accountMobile) ||
                other.accountMobile == accountMobile) &&
            (identical(other.accountType, accountType) ||
                other.accountType == accountType) &&
            (identical(other.accountEmail, accountEmail) ||
                other.accountEmail == accountEmail) &&
            (identical(other.accountBirthday, accountBirthday) ||
                other.accountBirthday == accountBirthday) &&
            (identical(other.accountAddress, accountAddress) ||
                other.accountAddress == accountAddress) &&
            const DeepCollectionEquality()
                .equals(other._accountDivision, _accountDivision) &&
            (identical(other.accountDivisionCurrent, accountDivisionCurrent) ||
                other.accountDivisionCurrent == accountDivisionCurrent) &&
            (identical(other.isKindergarten, isKindergarten) ||
                other.isKindergarten == isKindergarten) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      token,
      id,
      accountName,
      accountMobile,
      accountType,
      accountEmail,
      accountBirthday,
      accountAddress,
      const DeepCollectionEquality().hash(_accountDivision),
      accountDivisionCurrent,
      isKindergarten,
      refreshToken);

  /// Create a copy of LoginModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginModelImplCopyWith<_$LoginModelImpl> get copyWith =>
      __$$LoginModelImplCopyWithImpl<_$LoginModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginModelImplToJson(
      this,
    );
  }
}

abstract class _LoginModel extends LoginModel {
  factory _LoginModel(
      {required final String token,
      @JsonKey(name: '_id') required final String id,
      @JsonKey(name: 'account_name') required final String accountName,
      @JsonKey(name: 'account_mobile') required final String accountMobile,
      @JsonKey(name: 'account_type') required final String accountType,
      @JsonKey(name: 'account_email') required final String accountEmail,
      @JsonKey(name: 'account_birthday')
      required final DateTime accountBirthday,
      @JsonKey(name: 'account_address') required final String accountAddress,
      @JsonKey(name: 'account_division')
      required final List<AccountDivision> accountDivision,
      @JsonKey(name: 'account_division_current')
      required final AccountDivision accountDivisionCurrent,
      @JsonKey(name: 'is_kindergarten') required final bool isKindergarten,
      final String? refreshToken}) = _$LoginModelImpl;
  _LoginModel._() : super._();

  factory _LoginModel.fromJson(Map<String, dynamic> json) =
      _$LoginModelImpl.fromJson;

  @override
  String get token;
  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(name: 'account_name')
  String get accountName;
  @override
  @JsonKey(name: 'account_mobile')
  String get accountMobile;
  @override
  @JsonKey(name: 'account_type')
  String get accountType;
  @override
  @JsonKey(name: 'account_email')
  String get accountEmail;
  @override
  @JsonKey(name: 'account_birthday')
  DateTime get accountBirthday;
  @override
  @JsonKey(name: 'account_address')
  String get accountAddress;
  @override
  @JsonKey(name: 'account_division')
  List<AccountDivision> get accountDivision;
  @override
  @JsonKey(name: 'account_division_current')
  AccountDivision get accountDivisionCurrent;
  @override
  @JsonKey(name: 'is_kindergarten')
  bool get isKindergarten; //refreshToken not found in response this for me
  @override
  String? get refreshToken;

  /// Create a copy of LoginModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginModelImplCopyWith<_$LoginModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AccountDivision _$AccountDivisionFromJson(Map<String, dynamic> json) {
  return _AccountDivision.fromJson(json);
}

/// @nodoc
mixin _$AccountDivision {
  @JsonKey(name: 'class_name')
  String get className => throw _privateConstructorUsedError;
  String get leader => throw _privateConstructorUsedError;
  @JsonKey(name: 'lecture_amount')
  int? get lectureAmount => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;

  /// Serializes this AccountDivision to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccountDivision
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountDivisionCopyWith<AccountDivision> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountDivisionCopyWith<$Res> {
  factory $AccountDivisionCopyWith(
          AccountDivision value, $Res Function(AccountDivision) then) =
      _$AccountDivisionCopyWithImpl<$Res, AccountDivision>;
  @useResult
  $Res call(
      {@JsonKey(name: 'class_name') String className,
      String leader,
      @JsonKey(name: 'lecture_amount') int? lectureAmount,
      @JsonKey(name: '_id') String id});
}

/// @nodoc
class _$AccountDivisionCopyWithImpl<$Res, $Val extends AccountDivision>
    implements $AccountDivisionCopyWith<$Res> {
  _$AccountDivisionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountDivision
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? className = null,
    Object? leader = null,
    Object? lectureAmount = freezed,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      className: null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      leader: null == leader
          ? _value.leader
          : leader // ignore: cast_nullable_to_non_nullable
              as String,
      lectureAmount: freezed == lectureAmount
          ? _value.lectureAmount
          : lectureAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountDivisionImplCopyWith<$Res>
    implements $AccountDivisionCopyWith<$Res> {
  factory _$$AccountDivisionImplCopyWith(_$AccountDivisionImpl value,
          $Res Function(_$AccountDivisionImpl) then) =
      __$$AccountDivisionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'class_name') String className,
      String leader,
      @JsonKey(name: 'lecture_amount') int? lectureAmount,
      @JsonKey(name: '_id') String id});
}

/// @nodoc
class __$$AccountDivisionImplCopyWithImpl<$Res>
    extends _$AccountDivisionCopyWithImpl<$Res, _$AccountDivisionImpl>
    implements _$$AccountDivisionImplCopyWith<$Res> {
  __$$AccountDivisionImplCopyWithImpl(
      _$AccountDivisionImpl _value, $Res Function(_$AccountDivisionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountDivision
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? className = null,
    Object? leader = null,
    Object? lectureAmount = freezed,
    Object? id = null,
  }) {
    return _then(_$AccountDivisionImpl(
      className: null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
      leader: null == leader
          ? _value.leader
          : leader // ignore: cast_nullable_to_non_nullable
              as String,
      lectureAmount: freezed == lectureAmount
          ? _value.lectureAmount
          : lectureAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountDivisionImpl extends _AccountDivision {
  _$AccountDivisionImpl(
      {@JsonKey(name: 'class_name') required this.className,
      required this.leader,
      @JsonKey(name: 'lecture_amount') this.lectureAmount,
      @JsonKey(name: '_id') required this.id})
      : super._();

  factory _$AccountDivisionImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountDivisionImplFromJson(json);

  @override
  @JsonKey(name: 'class_name')
  final String className;
  @override
  final String leader;
  @override
  @JsonKey(name: 'lecture_amount')
  final int? lectureAmount;
  @override
  @JsonKey(name: '_id')
  final String id;

  @override
  String toString() {
    return 'AccountDivision(className: $className, leader: $leader, lectureAmount: $lectureAmount, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountDivisionImpl &&
            (identical(other.className, className) ||
                other.className == className) &&
            (identical(other.leader, leader) || other.leader == leader) &&
            (identical(other.lectureAmount, lectureAmount) ||
                other.lectureAmount == lectureAmount) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, className, leader, lectureAmount, id);

  /// Create a copy of AccountDivision
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountDivisionImplCopyWith<_$AccountDivisionImpl> get copyWith =>
      __$$AccountDivisionImplCopyWithImpl<_$AccountDivisionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountDivisionImplToJson(
      this,
    );
  }
}

abstract class _AccountDivision extends AccountDivision {
  factory _AccountDivision(
      {@JsonKey(name: 'class_name') required final String className,
      required final String leader,
      @JsonKey(name: 'lecture_amount') final int? lectureAmount,
      @JsonKey(name: '_id') required final String id}) = _$AccountDivisionImpl;
  _AccountDivision._() : super._();

  factory _AccountDivision.fromJson(Map<String, dynamic> json) =
      _$AccountDivisionImpl.fromJson;

  @override
  @JsonKey(name: 'class_name')
  String get className;
  @override
  String get leader;
  @override
  @JsonKey(name: 'lecture_amount')
  int? get lectureAmount;
  @override
  @JsonKey(name: '_id')
  String get id;

  /// Create a copy of AccountDivision
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountDivisionImplCopyWith<_$AccountDivisionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocalAccounts _$LocalAccountsFromJson(Map<String, dynamic> json) {
  return _LocalAccounts.fromJson(json);
}

/// @nodoc
mixin _$LocalAccounts {
  List<LoginModel>? get accounts => throw _privateConstructorUsedError;

  /// Serializes this LocalAccounts to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocalAccounts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocalAccountsCopyWith<LocalAccounts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalAccountsCopyWith<$Res> {
  factory $LocalAccountsCopyWith(
          LocalAccounts value, $Res Function(LocalAccounts) then) =
      _$LocalAccountsCopyWithImpl<$Res, LocalAccounts>;
  @useResult
  $Res call({List<LoginModel>? accounts});
}

/// @nodoc
class _$LocalAccountsCopyWithImpl<$Res, $Val extends LocalAccounts>
    implements $LocalAccountsCopyWith<$Res> {
  _$LocalAccountsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalAccounts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = freezed,
  }) {
    return _then(_value.copyWith(
      accounts: freezed == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<LoginModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocalAccountsImplCopyWith<$Res>
    implements $LocalAccountsCopyWith<$Res> {
  factory _$$LocalAccountsImplCopyWith(
          _$LocalAccountsImpl value, $Res Function(_$LocalAccountsImpl) then) =
      __$$LocalAccountsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<LoginModel>? accounts});
}

/// @nodoc
class __$$LocalAccountsImplCopyWithImpl<$Res>
    extends _$LocalAccountsCopyWithImpl<$Res, _$LocalAccountsImpl>
    implements _$$LocalAccountsImplCopyWith<$Res> {
  __$$LocalAccountsImplCopyWithImpl(
      _$LocalAccountsImpl _value, $Res Function(_$LocalAccountsImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocalAccounts
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = freezed,
  }) {
    return _then(_$LocalAccountsImpl(
      accounts: freezed == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<LoginModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocalAccountsImpl extends _LocalAccounts {
  _$LocalAccountsImpl({final List<LoginModel>? accounts})
      : _accounts = accounts,
        super._();

  factory _$LocalAccountsImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalAccountsImplFromJson(json);

  final List<LoginModel>? _accounts;
  @override
  List<LoginModel>? get accounts {
    final value = _accounts;
    if (value == null) return null;
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LocalAccounts(accounts: $accounts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalAccountsImpl &&
            const DeepCollectionEquality().equals(other._accounts, _accounts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_accounts));

  /// Create a copy of LocalAccounts
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalAccountsImplCopyWith<_$LocalAccountsImpl> get copyWith =>
      __$$LocalAccountsImplCopyWithImpl<_$LocalAccountsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalAccountsImplToJson(
      this,
    );
  }
}

abstract class _LocalAccounts extends LocalAccounts {
  factory _LocalAccounts({final List<LoginModel>? accounts}) =
      _$LocalAccountsImpl;
  _LocalAccounts._() : super._();

  factory _LocalAccounts.fromJson(Map<String, dynamic> json) =
      _$LocalAccountsImpl.fromJson;

  @override
  List<LoginModel>? get accounts;

  /// Create a copy of LocalAccounts
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocalAccountsImplCopyWith<_$LocalAccountsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
