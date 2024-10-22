// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_user_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddUserDetailsEvent {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName, String lastName) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName, String lastName)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName, String lastName)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submit value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Submit value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AddUserDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddUserDetailsEventCopyWith<AddUserDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddUserDetailsEventCopyWith<$Res> {
  factory $AddUserDetailsEventCopyWith(
          AddUserDetailsEvent value, $Res Function(AddUserDetailsEvent) then) =
      _$AddUserDetailsEventCopyWithImpl<$Res, AddUserDetailsEvent>;
  @useResult
  $Res call({String firstName, String lastName});
}

/// @nodoc
class _$AddUserDetailsEventCopyWithImpl<$Res, $Val extends AddUserDetailsEvent>
    implements $AddUserDetailsEventCopyWith<$Res> {
  _$AddUserDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddUserDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubmitImplCopyWith<$Res>
    implements $AddUserDetailsEventCopyWith<$Res> {
  factory _$$SubmitImplCopyWith(
          _$SubmitImpl value, $Res Function(_$SubmitImpl) then) =
      __$$SubmitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String firstName, String lastName});
}

/// @nodoc
class __$$SubmitImplCopyWithImpl<$Res>
    extends _$AddUserDetailsEventCopyWithImpl<$Res, _$SubmitImpl>
    implements _$$SubmitImplCopyWith<$Res> {
  __$$SubmitImplCopyWithImpl(
      _$SubmitImpl _value, $Res Function(_$SubmitImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddUserDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
  }) {
    return _then(_$SubmitImpl(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SubmitImpl implements _Submit {
  const _$SubmitImpl({required this.firstName, required this.lastName});

  @override
  final String firstName;
  @override
  final String lastName;

  @override
  String toString() {
    return 'AddUserDetailsEvent.submit(firstName: $firstName, lastName: $lastName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitImpl &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName);

  /// Create a copy of AddUserDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitImplCopyWith<_$SubmitImpl> get copyWith =>
      __$$SubmitImplCopyWithImpl<_$SubmitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName, String lastName) submit,
  }) {
    return submit(firstName, lastName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName, String lastName)? submit,
  }) {
    return submit?.call(firstName, lastName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName, String lastName)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(firstName, lastName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Submit value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Submit value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements AddUserDetailsEvent {
  const factory _Submit(
      {required final String firstName,
      required final String lastName}) = _$SubmitImpl;

  @override
  String get firstName;
  @override
  String get lastName;

  /// Create a copy of AddUserDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitImplCopyWith<_$SubmitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddUserDetailsState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  bool get navigateBackToSignIn => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of AddUserDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddUserDetailsStateCopyWith<AddUserDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddUserDetailsStateCopyWith<$Res> {
  factory $AddUserDetailsStateCopyWith(
          AddUserDetailsState value, $Res Function(AddUserDetailsState) then) =
      _$AddUserDetailsStateCopyWithImpl<$Res, AddUserDetailsState>;
  @useResult
  $Res call(
      {bool isSubmitting,
      bool isSuccess,
      bool hasError,
      bool navigateBackToSignIn,
      String? errorMessage});
}

/// @nodoc
class _$AddUserDetailsStateCopyWithImpl<$Res, $Val extends AddUserDetailsState>
    implements $AddUserDetailsStateCopyWith<$Res> {
  _$AddUserDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddUserDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? isSuccess = null,
    Object? hasError = null,
    Object? navigateBackToSignIn = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      navigateBackToSignIn: null == navigateBackToSignIn
          ? _value.navigateBackToSignIn
          : navigateBackToSignIn // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddUserDetailsStateImplCopyWith<$Res>
    implements $AddUserDetailsStateCopyWith<$Res> {
  factory _$$AddUserDetailsStateImplCopyWith(_$AddUserDetailsStateImpl value,
          $Res Function(_$AddUserDetailsStateImpl) then) =
      __$$AddUserDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSubmitting,
      bool isSuccess,
      bool hasError,
      bool navigateBackToSignIn,
      String? errorMessage});
}

/// @nodoc
class __$$AddUserDetailsStateImplCopyWithImpl<$Res>
    extends _$AddUserDetailsStateCopyWithImpl<$Res, _$AddUserDetailsStateImpl>
    implements _$$AddUserDetailsStateImplCopyWith<$Res> {
  __$$AddUserDetailsStateImplCopyWithImpl(_$AddUserDetailsStateImpl _value,
      $Res Function(_$AddUserDetailsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddUserDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? isSuccess = null,
    Object? hasError = null,
    Object? navigateBackToSignIn = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$AddUserDetailsStateImpl(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      navigateBackToSignIn: null == navigateBackToSignIn
          ? _value.navigateBackToSignIn
          : navigateBackToSignIn // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddUserDetailsStateImpl implements _AddUserDetailsState {
  const _$AddUserDetailsStateImpl(
      {required this.isSubmitting,
      required this.isSuccess,
      required this.hasError,
      this.navigateBackToSignIn = false,
      this.errorMessage});

  @override
  final bool isSubmitting;
  @override
  final bool isSuccess;
  @override
  final bool hasError;
  @override
  @JsonKey()
  final bool navigateBackToSignIn;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AddUserDetailsState(isSubmitting: $isSubmitting, isSuccess: $isSuccess, hasError: $hasError, navigateBackToSignIn: $navigateBackToSignIn, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddUserDetailsStateImpl &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError) &&
            (identical(other.navigateBackToSignIn, navigateBackToSignIn) ||
                other.navigateBackToSignIn == navigateBackToSignIn) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSubmitting, isSuccess,
      hasError, navigateBackToSignIn, errorMessage);

  /// Create a copy of AddUserDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddUserDetailsStateImplCopyWith<_$AddUserDetailsStateImpl> get copyWith =>
      __$$AddUserDetailsStateImplCopyWithImpl<_$AddUserDetailsStateImpl>(
          this, _$identity);
}

abstract class _AddUserDetailsState implements AddUserDetailsState {
  const factory _AddUserDetailsState(
      {required final bool isSubmitting,
      required final bool isSuccess,
      required final bool hasError,
      final bool navigateBackToSignIn,
      final String? errorMessage}) = _$AddUserDetailsStateImpl;

  @override
  bool get isSubmitting;
  @override
  bool get isSuccess;
  @override
  bool get hasError;
  @override
  bool get navigateBackToSignIn;
  @override
  String? get errorMessage;

  /// Create a copy of AddUserDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddUserDetailsStateImplCopyWith<_$AddUserDetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
