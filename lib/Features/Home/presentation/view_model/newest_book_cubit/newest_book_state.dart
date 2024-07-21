part of 'newest_book_cubit.dart';

sealed class NewestBookState extends Equatable {
  const NewestBookState();

  @override
  List<Object> get props => [];
}

final class NewestBookInitial extends NewestBookState {}

final class NewestBookLoading extends NewestBookState {}

final class NewestBookSuccess extends NewestBookState {
  final List<Book> books;
  const NewestBookSuccess(this.books);

  @override
  List<Object> get props => [books];
}

final class NewestBookFailure extends NewestBookState {
  final String errorMessage;
  const NewestBookFailure(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}