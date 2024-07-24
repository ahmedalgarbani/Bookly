import 'package:Bookly/Features/Home/Data/models/book_model/book.dart';
import 'package:Bookly/core/function/get_text.dart';
import 'package:Bookly/core/function/lunch_fun.dart';
import 'package:Bookly/core/widgets/book_btn.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  BooksAction({super.key, required this.bookModel});
  final Book bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
            child: DetailsButton(
          backgroundColor: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topLeft: Radius.circular(10),
          ),
          buttonText: "FREE",
          textColor: Colors.black,
        )),
        Expanded(
            child: DetailsButton(
          textColor: Colors.white,
          backgroundColor: Color(0xffEF8262),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          buttonText: getText(bookModel),
          onPressed: () {
            lunchCustomUri(context, bookModel.volumeInfo.previewLink!);
          },
        ))
      ],
    );
  }

  
}
