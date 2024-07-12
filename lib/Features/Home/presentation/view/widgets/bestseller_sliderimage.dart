import 'package:Bookly/constant.dart';
import 'package:flutter/material.dart';

class BestSellerSlideImage extends StatelessWidget {
  const BestSellerSlideImage({
    super.key,
  });

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
                image: AssetImage(KrowSlide), fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
