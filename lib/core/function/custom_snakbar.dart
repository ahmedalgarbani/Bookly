import 'package:flutter/material.dart';

void customsnakbar(context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('cannot lunch this url'),
    ),
  );
}
