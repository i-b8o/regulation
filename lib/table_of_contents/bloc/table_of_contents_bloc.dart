import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'table_of_contents_event.dart';
part 'table_of_contents_state.dart';

class TableOfContentsBloc
    extends Bloc<TableOfContentsEvent, TableOfContentsState> {
  TableOfContentsBloc() : super(TableOfContentsInitial()) {
    on<EventTableOfContentsInitial>(_onEventTableOfContentsInitial);
    on<EventTableOfContentsSearchTextFieldActivated>(
        _onEventSearchTextFieldActivated);
  }

  void _onEventSearchTextFieldActivated(
      EventSearchTextFieldActivatedevent, Emitter<TableOfContentsState> emit) {
    emit(StateSearchTextFieldActivated());
  }

  void _onEventTableOfContentsInitial(
      EventTableOfContentsInitial event, Emitter<TableOfContentsState> emit) {
    emit(TableOfContentsInitial());
  }
}
