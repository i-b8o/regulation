part of 'home_cubit.dart';

enum HomeTab { buy, choice, regulation }

class HomeState extends Equatable {
  const HomeState({
    this.tab = HomeTab.choice,
  });

  final HomeTab tab;

  @override
  List<Object> get props => [tab];
}
