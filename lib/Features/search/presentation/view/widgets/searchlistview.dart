import 'package:Bookly/Features/Home/Data/models/book_model/book.dart';
import 'package:Bookly/Features/Home/presentation/view/widgets/bestseller_sliderimage.dart';
import 'package:Bookly/Features/Home/presentation/view/widgets/book_rating.dart';
import 'package:Bookly/constant.dart';
import 'package:Bookly/core/style.dart';
import 'package:flutter/material.dart';

class Searchlistview extends StatelessWidget {
   Searchlistview({super.key,required this.book});
  Book book;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         BestSellerSlideImage(ImageUrl: book.volumeInfo.imageLinks!.thumbnail,),
        const SizedBox(
          width: 15,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child:  Text(
                  "${book.volumeInfo.title}",
                  style: Style.textStyle20,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
               Text(
                "${book.volumeInfo.authors![0]}",
                style: Style.textStyle14,
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "FREE",
                    style:
                        Style.textStyle18.copyWith(fontWeight: FontWeight.w600),
                  ),
                   BookRating(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
