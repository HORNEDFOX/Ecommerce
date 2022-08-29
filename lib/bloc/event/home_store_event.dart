part of '../bloc/home_store_bloc.dart';

abstract class HomeStoreEvent extends Equatable{
  const HomeStoreEvent();
}

class LoadHomeStoreEvent extends HomeStoreEvent{
  @override
  List<Object> get props => [];
}