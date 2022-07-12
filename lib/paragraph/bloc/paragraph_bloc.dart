import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'paragraph_event.dart';
part 'paragraph_state.dart';

class ParagraphBloc extends Bloc<ParagraphEvent, ParagraphState> {
  ParagraphBloc() : super(ParagraphInitial()) {
    on<ParagraphEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
