import 'package:Bookly/Features/Home/presentation/view_model/search_cubit/search_cubit.dart';
import 'package:Bookly/Features/search/presentation/view/widgets/searchlistview.dart';
import 'package:Bookly/core/widgets/customeLoader.dart';
import 'package:Bookly/core/widgets/customeerror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchBody extends StatelessWidget {
  SearchBody({super.key});
  String input = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 18,
      ),
      child: Column(
        children: [
          TextField(
            onChanged: (s) {
              input = s;
            },
            decoration: InputDecoration(
                hintText: 'Search',
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                suffixIcon: IconButton(
                    onPressed: () {
                      BlocProvider.of<SearchCubit>(context)
                          .searchBooksCubit(search: input);
                    },
                    icon: const Icon(Icons.search)),
                border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white))),
          ),
          const SizedBox(
            height: 10,
          ),
          BlocBuilder<SearchCubit, SearchState>(
            builder: (context, state) {
              if (state is SearchSuccess) {
                var books = state.searchBooks;
                return Expanded(
                  child: ListView.builder(
                      itemCount: books.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 4),
                          child: Searchlistview(book: books[index]),
                        );
                      }),
                );
              } else if (state is SearchFailure) {
                return CustomeError(errorMessage: state.errMessage);
              } else if (state is SearchLoading) {
                return Customeloader();
              } else {
                return Container();
              }
            },
          )
        ],
      ),
    ));
  }
}
