import 'package:Bookly/Features/Home/Data/models/book_model/book.dart';
import 'package:Bookly/core/function/custom_snakbar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> lunchCustomUri(context, String url) async {
  Uri _url = Uri.parse('$url');

  if (await canLaunchUrl(_url)) {
    await launchUrl(_url);
  } else {
    customsnakbar(context);
  }
}



