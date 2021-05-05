part of 'home_bloc.dart';

class HomeState extends Equatable {
  final List<ShoppingMall>? mallList;
  const HomeState({this.mallList});

  @override
  List<Object?> get props => [mallList];


  HomeState copyWith({
    List<ShoppingMall>? mallList,
  }) {
    return HomeState(
      mallList: mallList ?? this.mallList,
    );
  }
}


