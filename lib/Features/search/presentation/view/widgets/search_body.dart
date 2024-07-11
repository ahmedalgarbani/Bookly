import 'package:Bookly/Features/Home/presentation/view/widgets/bestseller_listview.dart';
import 'package:Bookly/Features/Home/presentation/view/widgets/bestselleritemlistview.dart';
import 'package:Bookly/Features/Home/presentation/view/widgets/listview.dart';
import 'package:flutter/material.dart';

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
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)),
                suffixIcon: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.search)),
                border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white))),
          ),
          SizedBox(height: 10,),
          Expanded(child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
            return Padding(
              
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: BestSellerListView(),
            );
          }))
        ],
      ),
    ));
  }
}
