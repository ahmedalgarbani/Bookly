import 'package:Bookly/constant.dart';
import 'package:Bookly/core/app_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(KimageDataLogo),
        const Spacer(),
        IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRoute.KSearchRouter);
            },
            icon: const Icon(Icons.search))
      ],
    );
  }
}
