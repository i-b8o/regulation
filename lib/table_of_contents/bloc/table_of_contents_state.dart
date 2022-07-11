part of 'table_of_contents_bloc.dart';

abstract class TableOfContentsState extends Equatable {
  const TableOfContentsState();

  @override
  List<Object> get props => [];
}

class TableOfContentsInitial extends TableOfContentsState {}

class StateSearchTextFieldActivated extends TableOfContentsState {}
