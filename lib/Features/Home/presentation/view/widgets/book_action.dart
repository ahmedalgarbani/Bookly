import 'package:Bookly/core/widgets/book_btn.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
            child: DetailsButton(
          backgroundColor: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            topLeft: Radius.circular(10),
          ),
          buttonText: "19.99\$",
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
          buttonText: "FREE Preview",
        ))
      ],
    );
  }
}
