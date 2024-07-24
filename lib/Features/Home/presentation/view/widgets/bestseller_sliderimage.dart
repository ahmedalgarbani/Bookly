import 'package:Bookly/constant.dart';
import 'package:flutter/material.dart';

class BestSellerSlideImage extends StatelessWidget {
   BestSellerSlideImage({
    super.key,required this.ImageUrl
  });
  String ImageUrl;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: AspectRatio(
        aspectRatio: 2.1 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            image: DecorationImage(
                image: NetworkImage(ImageUrl), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
