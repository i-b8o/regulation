import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:regulation_api/regulation_api.dart';
import 'package:regulation_repository/regulation_repository.dart';

part 'table_of_contents_event.dart';
part 'table_of_contents_state.dart';

class TableOfContentsBloc
    extends Bloc<TableOfContentsEvent, TableOfContentsState> {
  TableOfContentsBloc({required RegulationRepository regulationRepository})
      : _regulationRepository = regulationRepository,
        super(StateTableOfContentsInitial(
            regulationRepository.getRegulationAbbreviation())) {
    on<EventTableOfContentsInitial>(_onEventTableOfContentsInitial);
    on<EventTableOfContentsSearchTextFieldActivated>(
        _onEventTableOfContentsSearchTextFieldActivated);
  }

  RegulationRepository _regulationRepository;

  String get regulationAbbreviation =>
      _regulationRepository.getRegulationAbbreviation();

  List<ChapterInfo> get chapters => _regulationRepository.getTableOfContents();

  void _onEventTableOfContentsInitial(
      EventTableOfContentsInitial event, Emitter<TableOfContentsState> emit) {
    emit(StateTableOfContentsInitial(regulationAbbreviation));
  }

  void _onEventTableOfContentsSearchTextFieldActivated(
      EventTableOfContentsSearchTextFieldActivated event,
      Emitter<TableOfContentsState> emit) {
    emit(StateTableOfContentsSearchTextFieldActivated());
  }
}
