import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/abel_custom.dart';
import 'package:google_fonts/google_fonts.dart';

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

class BlogPostMobile extends StatefulWidget {
  final String title;
  final String body;
  final bool isMobile;
  const BlogPostMobile(
      {super.key,
      required this.title,
      required this.body,
      required this.isMobile});

  @override
  State<BlogPostMobile> createState() => _BlogPostMobileState();
}

class _BlogPostMobileState extends State<BlogPostMobile> {
  bool expand = false;
  onPressed() {
    setState(() {
      expand = !expand;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.isMobile
          ? EdgeInsets.only(left: 20, right: 20, top: 30)
          : EdgeInsets.only(left: 70, right: 70, top: 40),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
            style: BorderStyle.solid,
            width: 1,
            color: Colors.black,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlogPostHeader(
              title: widget.title,
              onPressed: onPressed,
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              widget.body,
              style: GoogleFonts.openSans(
                fontSize: 15,
              ),
              maxLines: expand ? null : 3,
              overflow: expand ? TextOverflow.visible : TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}

class BlogPostWeb extends StatefulWidget {
  final String title;
  final String body;
  const BlogPostWeb({super.key, required this.title, required this.body});

  @override
  State<BlogPostWeb> createState() => _BlogPostWebState();
}

class _BlogPostWebState extends State<BlogPostWeb> {
  bool expand = false;
  onPressed() {
    setState(() {
      expand = !expand;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 70, right: 70, top: 40),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            style: BorderStyle.solid,
            width: 1,
            color: Colors.black,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BlogPostHeader(
              title: widget.title,
              onPressed: onPressed,
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              widget.body,
              style: GoogleFonts.openSans(
                fontSize: 15,
              ),
              maxLines: expand ? null : 3,
              overflow: expand ? TextOverflow.visible : TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
