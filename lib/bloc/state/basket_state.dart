part of '../bloc/basket_bloc.dart';

abstract class BasketState extends Equatable{}

class BasketLoadingState extends BasketState{
  @override
  List<Object?> get props => [];
}

class BasketLoadedState extends BasketState{
  final Basket basket;

  BasketLoadedState(this.basket);

  @override
  List<Object?> get props => [basket];
}

class BasketErrorState extends BasketState{
  final String error;

  BasketErrorState(this.error);

  @override
  List<Object?> get props => [error];
}