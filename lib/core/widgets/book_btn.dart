import 'package:Bookly/core/style.dart';
import 'package:flutter/material.dart';

class DetailsButton extends StatelessWidget {
  const DetailsButton(
      {super.key,
      required this.backgroundColor,
      required this.borderRadius,
      required this.buttonText,
      required this.textColor, this.onPressed});
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius borderRadius;
  final String buttonText;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed:onPressed,
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: borderRadius),
            backgroundColor: backgroundColor,
          ),
          child: Text(
            buttonText,
            style: Style.textStyle16
                .copyWith(color: textColor, fontWeight: FontWeight.w900),
          )),
    );
  }
}
