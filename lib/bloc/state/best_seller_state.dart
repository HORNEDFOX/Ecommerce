part of '../bloc/best_seller_bloc.dart';

abstract class BestSellerState extends Equatable{}

class BestSellerLoadingState extends BestSellerState{
  @override
  List<Object?> get props => [];
}

class BestSellerLoadedState extends BestSellerState{
  final List<BestSeller> bestseller;

  BestSellerLoadedState(this.bestseller);

  @override
  List<Object?> get props => [bestseller];
}

class BestSellerErrorState extends BestSellerState{
  final String error;

  BestSellerErrorState(this.error);

  @override
  List<Object?> get props => [error];
}
