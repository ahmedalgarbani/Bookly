import 'package:Bookly/core/style.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.star_purple500_sharp, color: Colors.yellow),
        Text("4.5", style: Style.textStyle16),
        Opacity(opacity: .5, child: Text("(502)", style: Style.textStyle14)),
      ],
    );
  }
}
