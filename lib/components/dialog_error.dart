import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/sans.dart';

Future CustomDialog(BuildContext context, String message) {
  return showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      title: Sans(text: message, size: 20, isBold: true),
    ),
  );
}
