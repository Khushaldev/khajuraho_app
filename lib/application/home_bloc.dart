import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../di/di_container.dart';
import '../domain/taxonomy.dart';
import '../env/firebase_env.dart';
import 'firebase.dart';
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

  LocationListener get _locationListener => diContainer<LocationListener>();

  Future<void> _init(Emitter<HomeState> emit) async {
    try {
      // start location listener
      await _locationListener.start();

      emit(state.copyWith(isLoading: true));

      final items = await _getCarouselItems();
      final List<Taxonomy> taxonomies = await _getTaxonomies();

      emit(
        state.copyWith(
          isLoading: false,
          carouselItems: items,
          taxonomies: taxonomies,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          isLoading: false,
          hasError: true,
          errorMessage: 'Something went wrong. Please try again',
        ),
      );
    }
  }

  Future<List<Map<String, dynamic>>> _getCarouselItems() async {
    final data = FirestoreService.readAll(
      collectionName: 'category',
    );

    return data;
  }

  Future<List<Taxonomy>> _getTaxonomies() async {
    final List<Map<String, dynamic>> taxonomiesMap = await FirestoreService.readAll(
      collectionName: FirebaseEnv.taxonomyCollectionName,
    );

    final List<Taxonomy> taxonomies = taxonomiesMap //
        .map((json) => Taxonomy.fromJson(json)) //
        .toList();

    return taxonomies;
  }

  @override
  Future<void> close() async {
    await _locationListener.stop();
    return super.close();
  }
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
    @Default([]) List<Map<String, dynamic>> carouselItems,
    @Default(<Taxonomy>[]) List<Taxonomy> taxonomies,
    String? errorMessage,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState();
}
