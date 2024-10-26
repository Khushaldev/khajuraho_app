import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../di/di_container.dart';
import '../utils/helpers/log.dart';
import 'listeners/location_listener.dart';

part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<HomeEvent>(
      (event, emit) async {
        await event.when(
          init: () async => _init(emit),
        );
      },
    );
  }

  Future<void> _init(Emitter<HomeState> emit) async {
    try {
      Log.debug('HomeBloc initialized');
      await diContainer<LocationListener>().start();
    } catch (e) {}
  }

  // Future<bool> _checkLocationPermission() async {}
}

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.init() = Init;
}

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
    String? errorMessage,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState();
}
