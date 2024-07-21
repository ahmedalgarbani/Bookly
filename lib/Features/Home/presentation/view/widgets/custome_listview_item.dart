import 'package:Bookly/constant.dart';
import 'package:Bookly/core/app_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key, required this.ImageUrl});
  final String ImageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .23,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            image: DecorationImage(
              image: NetworkImage(ImageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
