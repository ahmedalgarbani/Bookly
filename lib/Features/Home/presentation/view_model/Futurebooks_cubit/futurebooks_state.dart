part of 'futurebooks_cubit.dart';

sealed class FuturebooksState extends Equatable {
  const FuturebooksState();

  @override
  List<Object> get props => [];
}

final class FuturebooksInitial extends FuturebooksState {}

final class FuturebooksLoading extends FuturebooksState {}

final class FuturebooksSussecc extends FuturebooksState {
  final List<Book> books;
  const FuturebooksSussecc(this.books);
}

final class FuturebooksFailure extends FuturebooksState {
  final String errorMessage;
  const FuturebooksFailure(this.errorMessage);
}
