part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class HomeInitialEvent extends HomeEvent {
  const HomeInitialEvent();
}

class SearchTextFieldActivatedEvent extends HomeEvent {
  const SearchTextFieldActivatedEvent();
}
