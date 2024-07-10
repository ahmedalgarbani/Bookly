import 'package:Bookly/constant.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .23,
      child: AspectRatio(
        aspectRatio: 2 / 4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(
                  image: AssetImage(KrowSlide), fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
