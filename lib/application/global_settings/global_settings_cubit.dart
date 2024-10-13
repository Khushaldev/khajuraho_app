import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/helpers/log.dart';

part 'global_settings_cubit.freezed.dart';

class GlobalSettingsCubit extends Cubit<GlobalSettingsState> {
  GlobalSettingsCubit() : super(GlobalSettingsState.initial());

  void setLocale(BuildContext context, Locale newLocale) {
    if (!context.supportedLocales.contains(newLocale)) {
      newLocale = const Locale('en');
    }

    context.setLocale(newLocale).catchError((e) {
      Log.warn('Catch error in setLocale: $e}');
    });

    if (state.locale != newLocale) {
      emit(state.copyWith(locale: newLocale));
    }
  }

  void readLocaleWhenAppLaunch(BuildContext context) {
    setLocale(context, state.locale);
  }
}

@freezed
class GlobalSettingsState with _$GlobalSettingsState {
  const GlobalSettingsState._();

  const factory GlobalSettingsState({
    required Locale locale,
  }) = _GlobalSettingsState;

  factory GlobalSettingsState.initial() {
    return const GlobalSettingsState(
      locale: Locale('en'),
    );
  }
}
