part of 'similar_book_cubit.dart';

sealed class SimilarBookState extends Equatable {
  const SimilarBookState();

  @override
  List<Object> get props => [];
}

final class SimilarBookInitial extends SimilarBookState {}

final class SimilarBookLoading extends SimilarBookState {}

final class SimilarBookSuccess extends SimilarBookState {
  final List<Book> SimilarBooks;

  const SimilarBookSuccess({required this.SimilarBooks});
}

final class SimilarBookFailure extends SimilarBookState {
  final String errMessage;

  const SimilarBookFailure({required this.errMessage});
}
