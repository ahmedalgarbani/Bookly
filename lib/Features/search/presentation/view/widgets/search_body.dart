import 'package:Bookly/Features/Home/presentation/view/widgets/bestseller_listview.dart';
import 'package:Bookly/Features/Home/presentation/view/widgets/bestselleritemlistview.dart';
import 'package:Bookly/Features/Home/presentation/view/widgets/listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

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
            decoration: InputDecoration(
                hintText: 'Search',
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                suffixIcon: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.search)),
                border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white))),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return  Padding(
                      padding: EdgeInsets.symmetric(vertical: 4),
                      child:Container() 
                      // BestSellerListView()
                      ,
                    );
                  }))
        ],
      ),
    ));
  }
}
