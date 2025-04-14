// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseImpl _$$LoginResponseImplFromJson(Map<String, dynamic> json) =>
    _$LoginResponseImpl(
      results: LoginModel.fromJson(json['results'] as Map<String, dynamic>),
      error: json['error'] as bool,
    );

Map<String, dynamic> _$$LoginResponseImplToJson(_$LoginResponseImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
      'error': instance.error,
    };

_$LoginModelImpl _$$LoginModelImplFromJson(Map<String, dynamic> json) =>
    _$LoginModelImpl(
      token: json['token'] as String,
      id: json['_id'] as String,
      accountName: json['account_name'] as String,
      accountMobile: json['account_mobile'] as String,
      accountType: json['account_type'] as String,
      accountEmail: json['account_email'] as String,
      accountBirthday: DateTime.parse(json['account_birthday'] as String),
      accountAddress: json['account_address'] as String,
      accountDivision: (json['account_division'] as List<dynamic>)
          .map((e) => AccountDivision.fromJson(e as Map<String, dynamic>))
          .toList(),
      accountDivisionCurrent: AccountDivision.fromJson(
          json['account_division_current'] as Map<String, dynamic>),
      isKindergarten: json['is_kindergarten'] as bool,
      refreshToken: json['refreshToken'] as String?,
    );

Map<String, dynamic> _$$LoginModelImplToJson(_$LoginModelImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      '_id': instance.id,
      'account_name': instance.accountName,
      'account_mobile': instance.accountMobile,
      'account_type': instance.accountType,
      'account_email': instance.accountEmail,
      'account_birthday': instance.accountBirthday.toIso8601String(),
      'account_address': instance.accountAddress,
      'account_division': instance.accountDivision,
      'account_division_current': instance.accountDivisionCurrent,
      'is_kindergarten': instance.isKindergarten,
      'refreshToken': instance.refreshToken,
    };

_$AccountDivisionImpl _$$AccountDivisionImplFromJson(
        Map<String, dynamic> json) =>
    _$AccountDivisionImpl(
      className: json['class_name'] as String,
      leader: json['leader'] as String,
      lectureAmount: (json['lecture_amount'] as num?)?.toInt(),
      id: json['_id'] as String,
    );

Map<String, dynamic> _$$AccountDivisionImplToJson(
        _$AccountDivisionImpl instance) =>
    <String, dynamic>{
      'class_name': instance.className,
      'leader': instance.leader,
      'lecture_amount': instance.lectureAmount,
      '_id': instance.id,
    };

_$LocalAccountsImpl _$$LocalAccountsImplFromJson(Map<String, dynamic> json) =>
    _$LocalAccountsImpl(
      accounts: (json['accounts'] as List<dynamic>?)
          ?.map((e) => LoginModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LocalAccountsImplToJson(_$LocalAccountsImpl instance) =>
    <String, dynamic>{
      'accounts': instance.accounts,
    };
