part of 'table_of_contents_bloc.dart';

abstract class TableOfContentsEvent extends Equatable {
  const TableOfContentsEvent();

  @override
  List<Object> get props => [];
}

class EventTableOfContentsInitial extends TableOfContentsEvent {}

class EventTableOfContentsSearchTextFieldActivated
    extends TableOfContentsEvent {}
