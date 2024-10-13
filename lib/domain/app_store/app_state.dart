import 'package:freezed_annotation/freezed_annotation.dart';

import '../user_profile.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory AppState({
    required UserProfile userProfile,
  }) = _AppState;

  factory AppState.fromJson(Map<String, dynamic> json) => //
      _$AppStateFromJson(json);

  static AppState get empty {
    return AppState(userProfile: UserProfile.visitor);
  }
}
