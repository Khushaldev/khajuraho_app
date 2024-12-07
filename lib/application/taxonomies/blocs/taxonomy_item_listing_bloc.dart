import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class TaxonomyItemListingBloc extends Bloc<TaxonomyItemListingEvent, TaxonomyItemListingState> {
  TaxonomyItemListingBloc(super.initialState, @factoryParam this.taxonomyId);

  final String taxonomyId;
}

class TaxonomyItemListingEvent {}

@injectable
class TaxonomyItemListingState {}
