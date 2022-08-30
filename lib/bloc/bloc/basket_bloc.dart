import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testecommerce/bloc/models/basket_class.dart';
import '../repository/basket_repository.dart';
import '../repository/product_repository.dart';

part '../state/basket_state.dart';
part '../event/basket_event.dart';

class BasketBloc extends Bloc<BasketEvent,BasketState>{

  final BasketRepository _basketRepository;

  BasketBloc({required BasketRepository basketRepository})
      : _basketRepository = basketRepository,
        super(BasketLoadingState())
  {
    on<LoadBasketEvent>(_onLoadBasketEvent);
  }

  Future<void> _onLoadBasketEvent(LoadBasketEvent event, Emitter<BasketState> emit) async {
    try {
      final Basket product = await _basketRepository.getBasket();
      emit(BasketLoadedState(product));
    } catch (e) {
      emit(BasketErrorState(e.toString()));
    }
  }
}