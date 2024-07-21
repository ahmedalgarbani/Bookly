import 'package:Bookly/Features/Home/presentation/view/widgets/custome_listview_item.dart';
import 'package:Bookly/Features/Home/presentation/view_model/Futurebooks_cubit/futurebooks_cubit.dart';
import 'package:Bookly/constant.dart';
import 'package:Bookly/core/widgets/customeLoader.dart';
import 'package:Bookly/core/widgets/customeerror.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomeCardSlider extends StatelessWidget {
  const CustomeCardSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FuturebooksCubit, FuturebooksState>(
        builder: (context, state) {
      if (state is FuturebooksSussecc) {
        final books = state.books;

        return SizedBox(
          height: MediaQuery.of(context).size.height * .23,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: CustomListViewItem(ImageUrl: books[index].volumeInfo.imageLinks!.thumbnail),
              );
            },
          ),
        );
      } else if (state is FuturebooksFailure) {
        return CustomeError(errorMessage: state.errorMessage);
      } else {
        return const Customeloader();
      }
    });
  }
}
