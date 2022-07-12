import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'table_of_contents_event.dart';
part 'table_of_contents_state.dart';

class TableOfContentsBloc
    extends Bloc<TableOfContentsEvent, TableOfContentsState> {
  TableOfContentsBloc() : super(StateTableOfContentsInitial()) {
    on<EventTableOfContentsInitial>(_onEventTableOfContentsInitial);
    on<EventTableOfContentsSearchTextFieldActivated>(
        _onEventTableOfContentsSearchTextFieldActivated);
  }

  void _onEventTableOfContentsInitial(
      EventTableOfContentsInitial event, Emitter<TableOfContentsState> emit) {
    emit(StateTableOfContentsInitial());
  }

  void _onEventTableOfContentsSearchTextFieldActivated(
      EventTableOfContentsSearchTextFieldActivated event,
      Emitter<TableOfContentsState> emit) {
    emit(StateTableOfContentsSearchTextFieldActivated());
  }
}
