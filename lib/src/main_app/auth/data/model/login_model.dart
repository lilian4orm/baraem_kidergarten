import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  factory LoginResponse({required LoginModel results, required bool error}) =
      _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@freezed
class LoginModel with _$LoginModel {
  const LoginModel._();
  factory LoginModel({
    required String token,
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'account_name') required String accountName,
    @JsonKey(name: 'account_mobile') required String accountMobile,
    @JsonKey(name: 'account_type') required String accountType,
    @JsonKey(name: 'account_email') required String accountEmail,
    @JsonKey(name: 'account_birthday') required DateTime accountBirthday,
    @JsonKey(name: 'account_address') required String accountAddress,
    @JsonKey(name: 'account_division')
    required List<AccountDivision> accountDivision,
    @JsonKey(name: 'account_division_current')
    required AccountDivision accountDivisionCurrent,
    @JsonKey(name: 'is_kindergarten') required bool isKindergarten,
    //refreshToken not found in response this for me
    String? refreshToken,
  }) = _LoginModel;

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);

  toMap() {
    return {
      'token': token,
      '_id': id,
      'account_name': accountName,
      'account_mobile': accountMobile,
      'account_type': accountType,
      'account_email': accountEmail,
      'account_birthday': accountBirthday.toIso8601String(),
      'account_address': accountAddress,
      'account_division': accountDivision.map((e) => e.toMap()).toList(),
      'account_division_current': accountDivisionCurrent.toMap(),
      'is_kindergarten': isKindergarten,
    };
  }
}

@freezed
class AccountDivision with _$AccountDivision {
  const AccountDivision._();
  factory AccountDivision({
    @JsonKey(name: 'class_name') required String className,
    required String leader,
    @JsonKey(name: 'lecture_amount') int? lectureAmount,
    @JsonKey(name: '_id') required String id,
  }) = _AccountDivision;

  factory AccountDivision.fromJson(Map<String, dynamic> json) =>
      _$AccountDivisionFromJson(json);
  toMap() {
    return {
      'class_name': className,
      'leader': leader,
      'lecture_amount': lectureAmount,
      '_id': id,
    };
  }
}

@freezed
class LocalAccounts with _$LocalAccounts {
  const LocalAccounts._();
  factory LocalAccounts({List<LoginModel>? accounts}) = _LocalAccounts;

  factory LocalAccounts.fromJson(Map<String, dynamic> json) =>
      _$LocalAccountsFromJson(json);
  toMap() {
    return {'accounts': accounts?.map((e) => e.toMap()).toList()};
  }
}
