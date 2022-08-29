import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testecommerce/bloc/models/best_seller_class.dart';
import 'package:testecommerce/bloc/repository/best_seller_repository.dart';

part '../state/best_seller_state.dart';
part '../event/best_seller_event.dart';

class BestSellerBloc extends Bloc<BestSellerEvent,BestSellerState>{

  final BestSellerRepository _bestsellerRepository;

  BestSellerBloc({required BestSellerRepository bestSellerRepository})
  : _bestsellerRepository = bestSellerRepository,
  super(BestSellerLoadingState())
  {
    on<LoadBestSellerEvent>(_onLoadBestSellerEvent);
  }

  Future<void> _onLoadBestSellerEvent(LoadBestSellerEvent event, Emitter<BestSellerState> emit) async {
    try {
      final List<BestSeller> bestSeller = await _bestsellerRepository.getBestSeller();
      emit(BestSellerLoadedState(bestSeller));
    } catch (e) {
      emit(BestSellerErrorState(e.toString()));
    }
  }
}