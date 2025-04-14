part of 'navigation_cubit.dart';

@freezed
class NavigationState with _$NavigationState {
  const factory NavigationState.initial({@Default(0) int index}) = _Initial;
}
