import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/sans.dart';

import 'service_card.dart';

class SingleShowcase extends StatelessWidget {
  final String imagePath;
  final double widthDevice;
  final String title;
  final String text;
  final bool flip = false;

  const SingleShowcase({
    super.key,
    required this.widthDevice,
    required this.imagePath,
    required this.title,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> buildShowcase = [
      ServiceCard(
        imagePath: imagePath,
        height: 200,
        width: 300,
      ),
      SizedBox(
        width: widthDevice / 3,
        child: Column(
          children: [
            Sans(text: title, size: 30, isBold: true),
            SizedBox(
              height: 15,
            ),
            Sans(
              text: text,
              size: 15,
            ),
          ],
        ),
      )
    ];

    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: flip ? buildShowcase.reversed.toList() : buildShowcase);
  }
}
