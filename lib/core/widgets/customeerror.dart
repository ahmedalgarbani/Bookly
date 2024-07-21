import 'package:Bookly/core/style.dart';
import 'package:flutter/material.dart';

class CustomeError extends StatelessWidget {
   CustomeError({super.key, required this.errorMessage});
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Text('$errorMessage',style: Style.textStyle18);
  }
}
