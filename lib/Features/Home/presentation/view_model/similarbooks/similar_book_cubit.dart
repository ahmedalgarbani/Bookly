import 'package:Bookly/Features/Home/Data/models/book_model/Repo/home_repo.dart';
import 'package:Bookly/Features/Home/Data/models/book_model/book.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'similar_book_state.dart';

class SimilarBookCubit extends Cubit<SimilarBookState> {
  SimilarBookCubit(this.homeRepo,) : super(SimilarBookInitial());
  final HomeRepo homeRepo;

  Future<void> similarBooks({required String category}) async {
    emit(SimilarBookLoading());
    var result = await homeRepo.similarBooks(category: category);
    result.fold((failure) {
      emit(SimilarBookFailure(errMessage: failure.errorMessage));
    }, (books) {
      emit(SimilarBookSuccess(SimilarBooks: books));
    });
  }
}
