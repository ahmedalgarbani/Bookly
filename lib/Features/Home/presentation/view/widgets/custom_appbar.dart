import 'package:Bookly/constant.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(KimageDataLogo),
        const Spacer(),
        IconButton(onPressed: () {}, icon: const Icon(Icons.search))
      ],
    );
  }
}
