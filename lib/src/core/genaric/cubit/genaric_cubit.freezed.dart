// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'genaric_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GenaricState {
  RemoteDataStatus get blocDatasStatus => throw _privateConstructorUsedError;
  DataState<void>? get dataState => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RemoteDataStatus blocDatasStatus, DataState<void>? dataState)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            RemoteDataStatus blocDatasStatus, DataState<void>? dataState)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            RemoteDataStatus blocDatasStatus, DataState<void>? dataState)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of GenaricState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenaricStateCopyWith<GenaricState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenaricStateCopyWith<$Res> {
  factory $GenaricStateCopyWith(
          GenaricState value, $Res Function(GenaricState) then) =
      _$GenaricStateCopyWithImpl<$Res, GenaricState>;
  @useResult
  $Res call({RemoteDataStatus blocDatasStatus, DataState<void>? dataState});
}

/// @nodoc
class _$GenaricStateCopyWithImpl<$Res, $Val extends GenaricState>
    implements $GenaricStateCopyWith<$Res> {
  _$GenaricStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenaricState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blocDatasStatus = null,
    Object? dataState = freezed,
  }) {
    return _then(_value.copyWith(
      blocDatasStatus: null == blocDatasStatus
          ? _value.blocDatasStatus
          : blocDatasStatus // ignore: cast_nullable_to_non_nullable
              as RemoteDataStatus,
      dataState: freezed == dataState
          ? _value.dataState
          : dataState // ignore: cast_nullable_to_non_nullable
              as DataState<void>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $GenaricStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RemoteDataStatus blocDatasStatus, DataState<void>? dataState});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$GenaricStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenaricState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blocDatasStatus = null,
    Object? dataState = freezed,
  }) {
    return _then(_$InitialImpl(
      blocDatasStatus: null == blocDatasStatus
          ? _value.blocDatasStatus
          : blocDatasStatus // ignore: cast_nullable_to_non_nullable
              as RemoteDataStatus,
      dataState: freezed == dataState
          ? _value.dataState
          : dataState // ignore: cast_nullable_to_non_nullable
              as DataState<void>?,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.blocDatasStatus = RemoteDataStatus.ideal, this.dataState});

  @override
  @JsonKey()
  final RemoteDataStatus blocDatasStatus;
  @override
  final DataState<void>? dataState;

  @override
  String toString() {
    return 'GenaricState.initial(blocDatasStatus: $blocDatasStatus, dataState: $dataState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.blocDatasStatus, blocDatasStatus) ||
                other.blocDatasStatus == blocDatasStatus) &&
            (identical(other.dataState, dataState) ||
                other.dataState == dataState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, blocDatasStatus, dataState);

  /// Create a copy of GenaricState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            RemoteDataStatus blocDatasStatus, DataState<void>? dataState)
        initial,
  }) {
    return initial(blocDatasStatus, dataState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            RemoteDataStatus blocDatasStatus, DataState<void>? dataState)?
        initial,
  }) {
    return initial?.call(blocDatasStatus, dataState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            RemoteDataStatus blocDatasStatus, DataState<void>? dataState)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(blocDatasStatus, dataState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GenaricState {
  const factory _Initial(
      {final RemoteDataStatus blocDatasStatus,
      final DataState<void>? dataState}) = _$InitialImpl;

  @override
  RemoteDataStatus get blocDatasStatus;
  @override
  DataState<void>? get dataState;

  /// Create a copy of GenaricState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
