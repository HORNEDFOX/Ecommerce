import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/home_store_class.dart';
import '../repository/home_store_repository.dart';

part '../state/home_store_state.dart';
part '../event/home_store_event.dart';

class HomeStoreBloc extends Bloc<HomeStoreEvent,HomeStoreState>{

  final HomeStoreRepository _homestoreRepository;

  HomeStoreBloc({required HomeStoreRepository homeStoreRepository})
      : _homestoreRepository = homeStoreRepository,
        super(HomeStoreLoadingState())
  {
    on<LoadHomeStoreEvent>(_onLoadHomeStoreEvent);
  }

  Future<void> _onLoadHomeStoreEvent(LoadHomeStoreEvent event, Emitter<HomeStoreState> emit) async {
    try {
      final List<HomeStore> bestSeller = await _homestoreRepository.getHomeStore();
      emit(HomeStoreLoadedState(bestSeller));
    } catch (e) {
      emit(HomeStoreErrorState(e.toString()));
    }
  }
}