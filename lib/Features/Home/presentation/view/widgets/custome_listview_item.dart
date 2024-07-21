import 'package:Bookly/constant.dart';
import 'package:Bookly/core/app_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key, required this.ImageUrl});
  final String ImageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      // height: MediaQuery.of(context).size.height * .23,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: CachedNetworkImage(imageUrl: ImageUrl,fit: BoxFit.fill
        ,
        placeholder: (context, url) => Center(child: CircularProgressIndicator(),),
        errorWidget: (context, url, error) => Icon(Icons.error),
        )
      ),
    );
  }
}
