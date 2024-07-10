import 'package:Bookly/Features/Home/presentation/view/widgets/bestseller_listview.dart';
import 'package:Bookly/core/app_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerItemListView extends StatelessWidget {
  const BestSellerItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 10,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              GoRouter.of(context).push(AppRoute.KBookDetailsRouter);
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 4.0),
              child: BestSellerListView(),
            ),
          );
        },
      ),
    );
  }
}
