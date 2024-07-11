import 'package:Bookly/Features/Home/presentation/view/widgets/book_action.dart';
import 'package:Bookly/Features/Home/presentation/view/widgets/book_rating.dart';
import 'package:Bookly/Features/Home/presentation/view/widgets/custome_listview_item.dart';
import 'package:Bookly/core/style.dart';
import 'package:flutter/material.dart';

class BookDetailCard extends StatelessWidget {
  const BookDetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * .24),
                  child: const CustomListViewItem()),
                         const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: const Text(
                  "Harry Potter and the Goblet of Fire",
                  style: Style.textStyle20,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              const Text(
                "3k reviews ",
                style: Style.textStyle14,
              ),
              const SizedBox(
                height: 3,
              ),
              const BookRating(),
                         const SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * .07,
                    vertical: 10),
                child: const BooksAction(),
              ),
      ],
    );
  }
}
