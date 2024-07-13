import 'package:Bookly/Features/Home/Data/models/book_model/Repo/home_repo.dart';
import 'package:Bookly/Features/Home/Data/models/book_model/book.dart';
import 'package:Bookly/core/errors/failure.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'futurebooks_state.dart';

class FuturebooksCubit extends Cubit<FuturebooksState> {
  FuturebooksCubit(this.homeRepo) : super(FuturebooksInitial());
  final HomeRepo homeRepo;

  Future<void> featchFeaturedBooks() async {
    emit(FuturebooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FuturebooksFailure(failure.errorMessage));
    }, (books) {
      emit(FuturebooksSussecc(books));
    });
  }
}
