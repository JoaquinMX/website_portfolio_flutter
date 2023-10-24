import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/abel_custom.dart';

class BlogPostHeader extends StatefulWidget {
  final String title;
  final onPressed;
  const BlogPostHeader({super.key, required this.title, this.onPressed});

  @override
  State<BlogPostHeader> createState() => _BlogPostHeaderState();
}

class _BlogPostHeaderState extends State<BlogPostHeader> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(3),
          ),
          child: AbelCustom(text: widget.title, size: 25, color: Colors.white),
        ),
        IconButton(
          onPressed: () => widget.onPressed(),
          icon: Icon(
            Icons.arrow_drop_down_circle_outlined,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
