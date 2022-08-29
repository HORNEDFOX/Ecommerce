part of '../bloc/home_store_bloc.dart';

abstract class HomeStoreState extends Equatable{}

class HomeStoreLoadingState extends HomeStoreState{
  @override
  List<Object?> get props => [];
}

class HomeStoreLoadedState extends HomeStoreState{
  final List<HomeStore> homestore;

  HomeStoreLoadedState(this.homestore);

  @override
  List<Object?> get props => [homestore];
}

class HomeStoreErrorState extends HomeStoreState{
  final String error;

  HomeStoreErrorState(this.error);

  @override
  List<Object?> get props => [error];
}