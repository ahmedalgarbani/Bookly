import 'package:Bookly/Features/Home/presentation/view/widgets/appbar_details.dart';
import 'package:Bookly/Features/Home/presentation/view/widgets/book_action.dart';
import 'package:Bookly/Features/Home/presentation/view/widgets/book_card_detail.dart';
import 'package:Bookly/Features/Home/presentation/view/widgets/book_rating.dart';
import 'package:Bookly/Features/Home/presentation/view/widgets/custome_listview_item.dart';
import 'package:Bookly/Features/Home/presentation/view/widgets/related_details.dart';
import 'package:Bookly/Features/Home/presentation/view/widgets/related_listveiw.dart';
import 'package:Bookly/core/style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDetailesView extends StatelessWidget {
  const BookDetailesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BookDetailCard(),
                    Expanded(
                      child: SizedBox(
                        height: 30,
                      ),
                    ),
                    RelatedDetails(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

