// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_auth_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GoogleAuthResponse {
  bool get success;
  String get message;
  GoogleAuthData get data;

  /// Create a copy of GoogleAuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GoogleAuthResponseCopyWith<GoogleAuthResponse> get copyWith =>
      _$GoogleAuthResponseCopyWithImpl<GoogleAuthResponse>(
          this as GoogleAuthResponse, _$identity);

  /// Serializes this GoogleAuthResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GoogleAuthResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data);

  @override
  String toString() {
    return 'GoogleAuthResponse(success: $success, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class $GoogleAuthResponseCopyWith<$Res> {
  factory $GoogleAuthResponseCopyWith(
          GoogleAuthResponse value, $Res Function(GoogleAuthResponse) _then) =
      _$GoogleAuthResponseCopyWithImpl;
  @useResult
  $Res call({bool success, String message, GoogleAuthData data});

  $GoogleAuthDataCopyWith<$Res> get data;
}

/// @nodoc
class _$GoogleAuthResponseCopyWithImpl<$Res>
    implements $GoogleAuthResponseCopyWith<$Res> {
  _$GoogleAuthResponseCopyWithImpl(this._self, this._then);

  final GoogleAuthResponse _self;
  final $Res Function(GoogleAuthResponse) _then;

  /// Create a copy of GoogleAuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_self.copyWith(
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as GoogleAuthData,
    ));
  }

  /// Create a copy of GoogleAuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GoogleAuthDataCopyWith<$Res> get data {
    return $GoogleAuthDataCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _GoogleAuthResponse extends GoogleAuthResponse {
  const _GoogleAuthResponse(
      {required this.success, required this.message, required this.data})
      : super._();
  factory _GoogleAuthResponse.fromJson(Map<String, dynamic> json) =>
      _$GoogleAuthResponseFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  @override
  final GoogleAuthData data;

  /// Create a copy of GoogleAuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GoogleAuthResponseCopyWith<_GoogleAuthResponse> get copyWith =>
      __$GoogleAuthResponseCopyWithImpl<_GoogleAuthResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GoogleAuthResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GoogleAuthResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, data);

  @override
  String toString() {
    return 'GoogleAuthResponse(success: $success, message: $message, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$GoogleAuthResponseCopyWith<$Res>
    implements $GoogleAuthResponseCopyWith<$Res> {
  factory _$GoogleAuthResponseCopyWith(
          _GoogleAuthResponse value, $Res Function(_GoogleAuthResponse) _then) =
      __$GoogleAuthResponseCopyWithImpl;
  @override
  @useResult
  $Res call({bool success, String message, GoogleAuthData data});

  @override
  $GoogleAuthDataCopyWith<$Res> get data;
}

/// @nodoc
class __$GoogleAuthResponseCopyWithImpl<$Res>
    implements _$GoogleAuthResponseCopyWith<$Res> {
  __$GoogleAuthResponseCopyWithImpl(this._self, this._then);

  final _GoogleAuthResponse _self;
  final $Res Function(_GoogleAuthResponse) _then;

  /// Create a copy of GoogleAuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_GoogleAuthResponse(
      success: null == success
          ? _self.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as GoogleAuthData,
    ));
  }

  /// Create a copy of GoogleAuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GoogleAuthDataCopyWith<$Res> get data {
    return $GoogleAuthDataCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
mixin _$GoogleAuthData {
  User get user;
  AuthTokens get tokens;

  /// Create a copy of GoogleAuthData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GoogleAuthDataCopyWith<GoogleAuthData> get copyWith =>
      _$GoogleAuthDataCopyWithImpl<GoogleAuthData>(
          this as GoogleAuthData, _$identity);

  /// Serializes this GoogleAuthData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GoogleAuthData &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.tokens, tokens) || other.tokens == tokens));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user, tokens);

  @override
  String toString() {
    return 'GoogleAuthData(user: $user, tokens: $tokens)';
  }
}

/// @nodoc
abstract mixin class $GoogleAuthDataCopyWith<$Res> {
  factory $GoogleAuthDataCopyWith(
          GoogleAuthData value, $Res Function(GoogleAuthData) _then) =
      _$GoogleAuthDataCopyWithImpl;
  @useResult
  $Res call({User user, AuthTokens tokens});

  $UserCopyWith<$Res> get user;
  $AuthTokensCopyWith<$Res> get tokens;
}

/// @nodoc
class _$GoogleAuthDataCopyWithImpl<$Res>
    implements $GoogleAuthDataCopyWith<$Res> {
  _$GoogleAuthDataCopyWithImpl(this._self, this._then);

  final GoogleAuthData _self;
  final $Res Function(GoogleAuthData) _then;

  /// Create a copy of GoogleAuthData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? tokens = null,
  }) {
    return _then(_self.copyWith(
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      tokens: null == tokens
          ? _self.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as AuthTokens,
    ));
  }

  /// Create a copy of GoogleAuthData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }

  /// Create a copy of GoogleAuthData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthTokensCopyWith<$Res> get tokens {
    return $AuthTokensCopyWith<$Res>(_self.tokens, (value) {
      return _then(_self.copyWith(tokens: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _GoogleAuthData extends GoogleAuthData {
  const _GoogleAuthData({required this.user, required this.tokens}) : super._();
  factory _GoogleAuthData.fromJson(Map<String, dynamic> json) =>
      _$GoogleAuthDataFromJson(json);

  @override
  final User user;
  @override
  final AuthTokens tokens;

  /// Create a copy of GoogleAuthData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GoogleAuthDataCopyWith<_GoogleAuthData> get copyWith =>
      __$GoogleAuthDataCopyWithImpl<_GoogleAuthData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GoogleAuthDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GoogleAuthData &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.tokens, tokens) || other.tokens == tokens));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user, tokens);

  @override
  String toString() {
    return 'GoogleAuthData(user: $user, tokens: $tokens)';
  }
}

/// @nodoc
abstract mixin class _$GoogleAuthDataCopyWith<$Res>
    implements $GoogleAuthDataCopyWith<$Res> {
  factory _$GoogleAuthDataCopyWith(
          _GoogleAuthData value, $Res Function(_GoogleAuthData) _then) =
      __$GoogleAuthDataCopyWithImpl;
  @override
  @useResult
  $Res call({User user, AuthTokens tokens});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $AuthTokensCopyWith<$Res> get tokens;
}

/// @nodoc
class __$GoogleAuthDataCopyWithImpl<$Res>
    implements _$GoogleAuthDataCopyWith<$Res> {
  __$GoogleAuthDataCopyWithImpl(this._self, this._then);

  final _GoogleAuthData _self;
  final $Res Function(_GoogleAuthData) _then;

  /// Create a copy of GoogleAuthData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = null,
    Object? tokens = null,
  }) {
    return _then(_GoogleAuthData(
      user: null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      tokens: null == tokens
          ? _self.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as AuthTokens,
    ));
  }

  /// Create a copy of GoogleAuthData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }

  /// Create a copy of GoogleAuthData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthTokensCopyWith<$Res> get tokens {
    return $AuthTokensCopyWith<$Res>(_self.tokens, (value) {
      return _then(_self.copyWith(tokens: value));
    });
  }
}

// dart format on
