import 'package:Bookly/Features/Home/Data/models/book_model/book.dart';
import 'package:Bookly/Features/Home/presentation/view/widgets/appbar_details.dart';
import 'package:Bookly/Features/Home/presentation/view/widgets/book_action.dart';
import 'package:Bookly/Features/Home/presentation/view/widgets/book_card_detail.dart';
import 'package:Bookly/Features/Home/presentation/view/widgets/book_rating.dart';
import 'package:Bookly/Features/Home/presentation/view/widgets/custome_listview_item.dart';
import 'package:Bookly/Features/Home/presentation/view/widgets/related_details.dart';
import 'package:Bookly/Features/Home/presentation/view/widgets/related_listveiw.dart';
import 'package:Bookly/Features/Home/presentation/view_model/similarbooks/similar_book_cubit.dart';
import 'package:Bookly/core/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BookDetailesView extends StatefulWidget {
  const BookDetailesView({super.key, required this.bookMoodel});
  final Book bookMoodel;

  @override
  State<BookDetailesView> createState() => _BookDetailesViewState();
}

class _BookDetailesViewState extends State<BookDetailesView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBookCubit>(context)
        .similarBooks(category: widget.bookMoodel.volumeInfo.categories![0]);
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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

                    BookDetailCard(bookModel:widget.bookMoodel),
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
