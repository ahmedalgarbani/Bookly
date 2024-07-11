import 'package:Bookly/Features/Home/presentation/view/widgets/related_listveiw.dart';
import 'package:Bookly/core/style.dart';
import 'package:flutter/material.dart';

class RelatedDetails extends StatelessWidget {
  const RelatedDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
       Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "You can also like",
                  style: Style.textStyle14.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
                         const SizedBox(height: 20,),
                         const RelatedListView(),
    ],);
  }
}