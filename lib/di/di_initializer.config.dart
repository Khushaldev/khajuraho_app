// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:client_app/application/add_user_details_bloc.dart' as _i911;
import 'package:client_app/application/home_bloc.dart' as _i865;
import 'package:client_app/application/listeners/location_listener.dart'
    as _i910;
import 'package:client_app/application/splash_bloc.dart' as _i761;
import 'package:client_app/application/user/auth/bloc/sign_in_bloc.dart'
    as _i568;
import 'package:client_app/di/di_app_module.dart' as _i548;
import 'package:client_app/domain/app_store/app_store.dart' as _i385;
import 'package:client_app/presentation/home_screen/bloc/home_page_bloc.dart'
    as _i760;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:flutter/material.dart' as _i409;
import 'package:get_it/get_it.dart' as _i174;
import 'package:google_sign_in/google_sign_in.dart' as _i116;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dIAppModule = _$DIAppModule();
    gh.factory<_i865.HomeBloc>(() => _i865.HomeBloc());
    gh.factory<_i568.SignInBloc>(() => _i568.SignInBloc());
    gh.factory<_i761.SplashBloc>(() => _i761.SplashBloc());
    gh.factory<_i911.AddUserDetailsBloc>(() => _i911.AddUserDetailsBloc());
    gh.factory<_i760.DashboardBloc>(() => _i760.DashboardBloc());
    gh.singleton<_i910.LocationListener>(() => _i910.LocationListener());
    gh.singleton<_i385.AppStore>(() => _i385.AppStore());
    gh.lazySingleton<_i409.GlobalKey<_i409.NavigatorState>>(
        () => dIAppModule.key);
    gh.lazySingleton<_i59.FirebaseAuth>(() => dIAppModule.firebaseAuth);
    gh.lazySingleton<_i116.GoogleSignIn>(() => dIAppModule.googleSignIn);
    return this;
  }
}

class _$DIAppModule extends _i548.DIAppModule {}
