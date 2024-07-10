import 'package:Bookly/Features/Home/presentation/view/widgets/book_action.dart';
import 'package:Bookly/Features/Home/presentation/view/widgets/book_rating.dart';
import 'package:Bookly/Features/Home/presentation/view/widgets/custome_listview_item.dart';
import 'package:Bookly/Features/Home/presentation/view/widgets/listview.dart';
import 'package:Bookly/core/style.dart';
import 'package:Bookly/core/widgets/book_btn.dart';
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
            icon: const Icon(Icons.close),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart),
            ),
          ]),
      body:  SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
           const SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "You can also like",
                style: Style.textStyle14.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
           const SizedBox(height: 20,),
           const RelatedListView(),
          ],
        ),
      ),
    );
  }
}

class RelatedListView extends StatelessWidget {
  const RelatedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height *.18,
      child: ListView.builder(
        scrollDirection:Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 2),
          child: CustomListViewItem());
      }),
    );
  }
}


