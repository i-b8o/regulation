import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitialState()) {
    on<HomeInitialEvent>(_onHomeInitialEvent);
    on<SearchTextFieldActivatedEvent>(_onSearchTextFieldActivatedEvent);
  }
  void _onHomeInitialEvent(HomeInitialEvent event, Emitter<HomeState> emit) {
    emit(HomeInitialState());
  }

  void _onSearchTextFieldActivatedEvent(
      SearchTextFieldActivatedEvent event, Emitter<HomeState> emit) {
    emit(SearchTextFieldActivatedState());
  }
}
