part of 'auth_cubit_cubit.dart';

@freezed
class AuthCubitState with _$AuthCubitState {
  const factory AuthCubitState.initial({
    @Default(RemoteDataStatus.ideal) RemoteDataStatus remoteDataStatus,
    DataFailed? dataFailed,
  }) = _Initial;
}
