import 'package:Bookly/Features/Home/presentation/view/widgets/bestselleritemlistview.dart';
import 'package:Bookly/Features/Home/presentation/view/widgets/custom_appbar.dart';
import 'package:Bookly/Features/Home/presentation/view/widgets/listview.dart';
import 'package:Bookly/constant.dart';
import 'package:Bookly/core/style.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = "homepage";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomAppBar(),
                    CustomeCardSlider(),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Best Seller",
                      style: Style.textStyle18,
                    ),
                  ],
                ),
              ),
              SliverFillRemaining(
                child: BestSellerItemListView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
