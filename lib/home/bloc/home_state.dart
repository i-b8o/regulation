part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class StateHomeInitial extends HomeState {}

class StateSearchTextFieldActivated extends HomeState {}

class StateRegulation extends HomeState {}

class StateBuy extends HomeState {}
