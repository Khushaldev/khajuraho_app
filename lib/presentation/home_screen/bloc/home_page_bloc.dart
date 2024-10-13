import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:client_app/application/category.dart';
import 'package:client_app/application/firebase.dart';

@injectable
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc() : super(const InitialDashboardState()) {
    on<DashboardEvent>(
      (event, emit) async {
        return switch (event) {
          LoadDashboardDataEvent() => _onLoad(event, emit),
          RetryDashboardDataEvent() => _onLoad(event, emit),
        };
      },
    );

    add(const LoadDashboardDataEvent());
  }

  Future<void> _onLoad(
    DashboardEvent event,
    Emitter<DashboardState> emit,
  ) async {
    emit(const LoadingCategoryListState());
    try {
      await FirestoreService.createMany(
        collectionName: 'category',
        dataList: categoriesSeed,
        docId: 'id',
      );

      final List<Map<String, dynamic>> categories //
          = await FirestoreService.readAll(
        collectionName: 'category',
      );
      categories.sort(
        (a, b) => int.parse(a['id']).compareTo(int.parse(b['id'])),
      );
      emit(CategoryListState(categories: categories));
    } catch (_) {
      emit(const ErrorCategoryListState());
    }
  }
}

sealed class DashboardEvent {}

class LoadDashboardDataEvent implements DashboardEvent {
  const LoadDashboardDataEvent();
}

class RetryDashboardDataEvent implements DashboardEvent {
  const RetryDashboardDataEvent();
}

sealed class DashboardState {}

class InitialDashboardState implements DashboardState {
  const InitialDashboardState();
}

class CategoryListState implements DashboardState {
  const CategoryListState({
    this.categories = const [],
  });

  final List<Map<String, dynamic>> categories;
}

class LoadingCategoryListState implements DashboardState {
  const LoadingCategoryListState();
}

class ErrorCategoryListState implements DashboardState {
  const ErrorCategoryListState();
}
