import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:wondereng_shopping_mall/core/domain/entities/shopping_mall.dart';
import 'package:wondereng_shopping_mall/core/domain/repositories/shopping_mall_repository.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ShoppingMallRepository repository;
  HomeBloc(this.repository) : super(HomeState(mallList: []));
  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    if (event is GetShoppingMalls) {
      //TODO : LOADER SHOULD BE IMPLEMENTED

      final failureOrResult = await repository.getShoppingMalls();
      //TODO : SHOULD RETURN RECEIVED STATE
    }
  }
}
