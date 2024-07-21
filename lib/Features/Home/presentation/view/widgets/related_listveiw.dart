import 'package:Bookly/Features/Home/presentation/view/widgets/custome_listview_item.dart';
import 'package:flutter/material.dart';

class RelatedListView extends StatelessWidget {
  const RelatedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .18,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 2),
                child: CustomListViewItem(ImageUrl: "dd",));
          }),
    );
  }
}
