import 'package:Bookly/Features/Home/Data/models/book_model/book.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'futurebooks_state.dart';

class FuturebooksCubit extends Cubit<FuturebooksState> {
  FuturebooksCubit() : super(FuturebooksInitial());
}
