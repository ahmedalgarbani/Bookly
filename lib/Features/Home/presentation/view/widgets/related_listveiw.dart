import 'package:Bookly/Features/Home/presentation/view/widgets/custome_listview_item.dart';
import 'package:Bookly/Features/Home/presentation/view_model/similarbooks/similar_book_cubit.dart';
import 'package:Bookly/core/widgets/customeLoader.dart';
import 'package:Bookly/core/widgets/customeerror.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RelatedListView extends StatelessWidget {
  const RelatedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBookCubit, SimilarBookState>(
      builder: (context, state) {
        if (state is SimilarBookSuccess) {
          var books = state.SimilarBooks;
          return SizedBox(
            height: MediaQuery.of(context).size.height * .18,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2),
                      child: CustomListViewItem(
                        ImageUrl: books[index].volumeInfo.imageLinks!.thumbnail?? '',
                        
                      ));
                }),
          );
        } else if (state is SimilarBookFailure) {
          return CustomeError(errorMessage: state.errMessage);
        } else {
          return Customeloader();
        }
      },
    );
  }
}
