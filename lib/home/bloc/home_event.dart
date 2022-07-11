part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class EventHomeInitial extends HomeEvent {
  const EventHomeInitial();
}

class EventSearchTextFieldActivated extends HomeEvent {
  const EventSearchTextFieldActivated();
}

class EventRegulation extends HomeEvent {}

class EventBuy extends HomeEvent {}
