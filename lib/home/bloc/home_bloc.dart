import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeInitialEvent>(_onHomeInitialEvent);
    on<SearchTextFieldActivatedEvent>(_onSearchTextFieldActivatedEvent);
  }
  void _onHomeInitialEvent(HomeInitialEvent event, Emitter<HomeState> emit) {
    emit(HomeInitial());
  }

  void _onSearchTextFieldActivatedEvent(
      SearchTextFieldActivatedEvent event, Emitter<HomeState> emit) {
    emit(SearchTextFieldActivatedState());
  }
}
