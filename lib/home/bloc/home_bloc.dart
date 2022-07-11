import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(StateHomeInitial()) {
    on<EventHomeInitial>(_onEventHomeInitial);
    on<EventSearchTextFieldActivated>(_onEventSearchTextFieldActivated);
    on<EventRegulation>(_onEventRegulation);
    on<EventBuy>(_onEventBuy);
  }

  void _onEventHomeInitial(EventHomeInitial event, Emitter<HomeState> emit) {
    emit(StateHomeInitial());
  }

  void _onEventSearchTextFieldActivated(
      EventSearchTextFieldActivated event, Emitter<HomeState> emit) {
    emit(StateSearchTextFieldActivated());
  }

  void _onEventRegulation(EventRegulation event, Emitter<HomeState> emit) {
    emit(StateRegulation());
  }

  void _onEventBuy(EventBuy event, Emitter<HomeState> emit) {
    emit(StateBuy());
  }
}
