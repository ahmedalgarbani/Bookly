import 'package:Bookly/Features/Home/presentation/view/widgets/custome_listview_item.dart';
import 'package:flutter/material.dart';

class CustomeCardSlider extends StatelessWidget {
  const CustomeCardSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .23,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return  Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.0),
            child: CustomListViewItem(),
            
          );
        },
      ),
    );
  }
}
