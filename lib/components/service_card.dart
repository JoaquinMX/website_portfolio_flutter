import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/sans.dart';

class ServiceCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String text;
  const ServiceCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 30,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      shadowColor: Colors.tealAccent,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              height: 200,
              width: 200,
            ),
            SizedBox(
              height: 10,
            ),
            Sans(
              text: title,
              size: 15,
              isBold: true,
            ),
            Sans(
              text: text,
              size: 13,
              width: 200,
            ),
          ],
        ),
      ),
    );
  }
}
