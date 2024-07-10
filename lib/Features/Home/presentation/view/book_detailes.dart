import 'package:Bookly/Features/Home/presentation/view/widgets/book_rating.dart';
import 'package:Bookly/Features/Home/presentation/view/widgets/custome_listview_item.dart';
import 'package:Bookly/core/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDetailesView extends StatelessWidget {
  const BookDetailesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: Icon(Icons.close),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart),
            ),
          ]),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * .24),
                child: CustomListViewItem()),
                SizedBox(height: 30,),
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
          ],
        ),
      ),
    );
  }
}
