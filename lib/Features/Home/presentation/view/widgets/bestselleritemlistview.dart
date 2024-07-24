import 'package:Bookly/Features/Home/presentation/view/widgets/bestseller_listview.dart';
import 'package:Bookly/Features/Home/presentation/view_model/newest_book_cubit/newest_book_cubit.dart';
import 'package:Bookly/core/app_route.dart';
import 'package:Bookly/core/widgets/customeLoader.dart';
import 'package:Bookly/core/widgets/customeerror.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BestSellerItemListView extends StatelessWidget {
  const BestSellerItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBookCubit, NewestBookState>(
      builder: (context, state) {
        if (state is NewestBookSuccess) {
          var books = state.books;
          return SizedBox(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 10,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(AppRoute.KBookDetailsRouter,extra:  books[index]);
                  },
                  child:  Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                    child: BestSellerListView(book: books[index],),
                  ),
                );
              },
            ),
          );
        } else if (state is NewestBookFailure) {
          return CustomeError(errorMessage: state.errorMessage);
        } else {
          return const Customeloader();
        }
      },
    );
  }
}
