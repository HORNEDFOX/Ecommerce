part of '../bloc/best_seller_bloc.dart';

abstract class BestSellerEvent extends Equatable{
  const BestSellerEvent();
}

class LoadBestSellerEvent extends BestSellerEvent{
  @override
  List<Object> get props => [];
}