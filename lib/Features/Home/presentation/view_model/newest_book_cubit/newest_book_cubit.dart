import 'package:Bookly/Features/Home/Data/models/book_model/Repo/home_repo.dart';
import 'package:Bookly/Features/Home/Data/models/book_model/book.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'newest_book_state.dart';

class NewestBookCubit extends Cubit<NewestBookState> {
  NewestBookCubit(this.homeRepo) : super(NewestBookInitial());
  final HomeRepo homeRepo;

  Future<void> featchNewestBooks() async {
    emit(NewestBookLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(NewestBookFailure(failure.errorMessage));
    }, (books) {
      emit(NewestBookSuccess(books));
    });
  }
}
