part of '../bloc/basket_bloc.dart';

abstract class BasketEvent extends Equatable{
  const BasketEvent();
}

class LoadBasketEvent extends BasketEvent{
  @override
  List<Object> get props => [];
}