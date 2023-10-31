import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/sans.dart';

Future DialogError(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      title: Sans(text: "Message Submitted", size: 20, isBold: true),
    ),
  );
}
