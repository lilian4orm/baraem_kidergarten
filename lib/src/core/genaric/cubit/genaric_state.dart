part of 'genaric_cubit.dart';

@freezed
class GenaricState with _$GenaricState {
  const factory GenaricState.initial({
    @Default(RemoteDataStatus.ideal) RemoteDataStatus blocDatasStatus,
    DataState<void>? dataState,
  }) = _Initial;
}
