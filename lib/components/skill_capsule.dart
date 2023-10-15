import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/sans.dart';

class SkillCapsule extends StatelessWidget {
  final String text;
  const SkillCapsule({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.tealAccent,
          style: BorderStyle.solid,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      padding: EdgeInsets.all(7),
      child: Sans(text: text, size: 15),
    );
  }
}
