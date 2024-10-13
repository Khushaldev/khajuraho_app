// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'global_settings_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GlobalSettingsState {
  Locale get locale => throw _privateConstructorUsedError;

  /// Create a copy of GlobalSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GlobalSettingsStateCopyWith<GlobalSettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalSettingsStateCopyWith<$Res> {
  factory $GlobalSettingsStateCopyWith(
          GlobalSettingsState value, $Res Function(GlobalSettingsState) then) =
      _$GlobalSettingsStateCopyWithImpl<$Res, GlobalSettingsState>;
  @useResult
  $Res call({Locale locale});
}

/// @nodoc
class _$GlobalSettingsStateCopyWithImpl<$Res, $Val extends GlobalSettingsState>
    implements $GlobalSettingsStateCopyWith<$Res> {
  _$GlobalSettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GlobalSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_value.copyWith(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GlobalSettingsStateImplCopyWith<$Res>
    implements $GlobalSettingsStateCopyWith<$Res> {
  factory _$$GlobalSettingsStateImplCopyWith(_$GlobalSettingsStateImpl value,
          $Res Function(_$GlobalSettingsStateImpl) then) =
      __$$GlobalSettingsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Locale locale});
}

/// @nodoc
class __$$GlobalSettingsStateImplCopyWithImpl<$Res>
    extends _$GlobalSettingsStateCopyWithImpl<$Res, _$GlobalSettingsStateImpl>
    implements _$$GlobalSettingsStateImplCopyWith<$Res> {
  __$$GlobalSettingsStateImplCopyWithImpl(_$GlobalSettingsStateImpl _value,
      $Res Function(_$GlobalSettingsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GlobalSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_$GlobalSettingsStateImpl(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$GlobalSettingsStateImpl extends _GlobalSettingsState {
  const _$GlobalSettingsStateImpl({required this.locale}) : super._();

  @override
  final Locale locale;

  @override
  String toString() {
    return 'GlobalSettingsState(locale: $locale)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GlobalSettingsStateImpl &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  /// Create a copy of GlobalSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GlobalSettingsStateImplCopyWith<_$GlobalSettingsStateImpl> get copyWith =>
      __$$GlobalSettingsStateImplCopyWithImpl<_$GlobalSettingsStateImpl>(
          this, _$identity);
}

abstract class _GlobalSettingsState extends GlobalSettingsState {
  const factory _GlobalSettingsState({required final Locale locale}) =
      _$GlobalSettingsStateImpl;
  const _GlobalSettingsState._() : super._();

  @override
  Locale get locale;

  /// Create a copy of GlobalSettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GlobalSettingsStateImplCopyWith<_$GlobalSettingsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
