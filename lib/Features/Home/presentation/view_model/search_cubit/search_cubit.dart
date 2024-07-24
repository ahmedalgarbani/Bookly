import 'package:Bookly/Features/Home/Data/models/book_model/Repo/home_repo.dart';
import 'package:Bookly/Features/Home/Data/models/book_model/book.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.homeRepo) : super(SearchInitial());
   final HomeRepo homeRepo;

  Future<void> searchBooksCubit({required String search}) async {
    emit(SearchLoading());
    var result = await homeRepo.searchBooks(search: search);
    result.fold((failure) {
      emit(SearchFailure(errMessage: failure.errorMessage));
    }, (books) {
      emit(SearchSuccess(searchBooks: books));
    });
  }
}