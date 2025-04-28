// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_auth_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GoogleAuthRequest {
  String get idToken;
  double get latitude;
  double get longitude;

  /// Create a copy of GoogleAuthRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GoogleAuthRequestCopyWith<GoogleAuthRequest> get copyWith =>
      _$GoogleAuthRequestCopyWithImpl<GoogleAuthRequest>(
          this as GoogleAuthRequest, _$identity);

  /// Serializes this GoogleAuthRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GoogleAuthRequest &&
            (identical(other.idToken, idToken) || other.idToken == idToken) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, idToken, latitude, longitude);

  @override
  String toString() {
    return 'GoogleAuthRequest(idToken: $idToken, latitude: $latitude, longitude: $longitude)';
  }
}

/// @nodoc
abstract mixin class $GoogleAuthRequestCopyWith<$Res> {
  factory $GoogleAuthRequestCopyWith(
          GoogleAuthRequest value, $Res Function(GoogleAuthRequest) _then) =
      _$GoogleAuthRequestCopyWithImpl;
  @useResult
  $Res call({String idToken, double latitude, double longitude});
}

/// @nodoc
class _$GoogleAuthRequestCopyWithImpl<$Res>
    implements $GoogleAuthRequestCopyWith<$Res> {
  _$GoogleAuthRequestCopyWithImpl(this._self, this._then);

  final GoogleAuthRequest _self;
  final $Res Function(GoogleAuthRequest) _then;

  /// Create a copy of GoogleAuthRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idToken = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_self.copyWith(
      idToken: null == idToken
          ? _self.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _GoogleAuthRequest extends GoogleAuthRequest {
  const _GoogleAuthRequest(
      {required this.idToken, required this.latitude, required this.longitude})
      : super._();
  factory _GoogleAuthRequest.fromJson(Map<String, dynamic> json) =>
      _$GoogleAuthRequestFromJson(json);

  @override
  final String idToken;
  @override
  final double latitude;
  @override
  final double longitude;

  /// Create a copy of GoogleAuthRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GoogleAuthRequestCopyWith<_GoogleAuthRequest> get copyWith =>
      __$GoogleAuthRequestCopyWithImpl<_GoogleAuthRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GoogleAuthRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GoogleAuthRequest &&
            (identical(other.idToken, idToken) || other.idToken == idToken) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, idToken, latitude, longitude);

  @override
  String toString() {
    return 'GoogleAuthRequest(idToken: $idToken, latitude: $latitude, longitude: $longitude)';
  }
}

/// @nodoc
abstract mixin class _$GoogleAuthRequestCopyWith<$Res>
    implements $GoogleAuthRequestCopyWith<$Res> {
  factory _$GoogleAuthRequestCopyWith(
          _GoogleAuthRequest value, $Res Function(_GoogleAuthRequest) _then) =
      __$GoogleAuthRequestCopyWithImpl;
  @override
  @useResult
  $Res call({String idToken, double latitude, double longitude});
}

/// @nodoc
class __$GoogleAuthRequestCopyWithImpl<$Res>
    implements _$GoogleAuthRequestCopyWith<$Res> {
  __$GoogleAuthRequestCopyWithImpl(this._self, this._then);

  final _GoogleAuthRequest _self;
  final $Res Function(_GoogleAuthRequest) _then;

  /// Create a copy of GoogleAuthRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? idToken = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_GoogleAuthRequest(
      idToken: null == idToken
          ? _self.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _self.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _self.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

// dart format on
