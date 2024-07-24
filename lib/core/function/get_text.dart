import 'package:Bookly/Features/Home/Data/models/book_model/book.dart';

String getText(Book bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return 'Not Avilable';
    } else {
      return 'Privew';
    }
  }