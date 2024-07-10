import 'package:Bookly/Features/Home/presentation/view/widgets/bestseller_sliderimage.dart';
import 'package:Bookly/Features/Home/presentation/view/widgets/book_rating.dart';
import 'package:Bookly/constant.dart';
import 'package:Bookly/core/style.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const BestSellerSlideImage(),
        const SizedBox(
          width: 15,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: const Text(
                  "Harry Potter and the Goblet of Fire",
                  style: Style.textStyle20,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              const Text(
                "3k reviews ",
                style: Style.textStyle14,
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "9.99\$",
                    style: Style.textStyle18.copyWith(fontWeight: FontWeight.w600),
                  ),
                  const BookRating(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
