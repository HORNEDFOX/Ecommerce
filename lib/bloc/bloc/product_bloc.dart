import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testecommerce/bloc/models/product_class.dart';
import '../repository/product_repository.dart';

part '../state/product_state.dart';
part '../event/product_event.dart';

class ProductBloc extends Bloc<ProductEvent,ProductState>{

  final ProductRepository _productRepository;

  ProductBloc({required ProductRepository productRepository})
      : _productRepository = productRepository,
        super(ProductLoadingState())
  {
    on<LoadProductEvent>(_onLoadProductEvent);
  }

  Future<void> _onLoadProductEvent(LoadProductEvent event, Emitter<ProductState> emit) async {
    try {
      final Product product = await _productRepository.getProduct();
      emit(ProductLoadedState(product));
    } catch (e) {
      emit(ProductErrorState(e.toString()));
    }
  }
}