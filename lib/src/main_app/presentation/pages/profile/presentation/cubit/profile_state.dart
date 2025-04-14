part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial({
    @Default(RemoteDataStatus.ideal) RemoteDataStatus remoteDataStatus,
    ProfileModel? profileModel,
    LocalAccounts? localAccounts,
    DataFailed? dataFailed,
  }) = _Initial;
}
