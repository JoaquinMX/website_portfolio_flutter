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
  const BlogPostMobile({super.key});

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
      padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
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
              title: "Who is Dash?",
              onPressed: onPressed,
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              "As soon as Shams Zakhour started working as a Dart writer at Google in December 2013, she started advocating for a Dart mascot. After documenting Java for 14 years, she had observed how beloved the Java mascot, Duke, had become, and she wanted something similar for Dart. But the idea didn’t gain momentum until 2017, when one of the Flutter engineers, Nina Chen, suggested it on an internal mailing list. The Flutter VP at the time, Joshy Joseph, approved the idea and asked the organizer for the 2018 Dart Conference, Linda Rasmussen, to make it happen. Once Shams heard about these plans, she rushed to Linda and asked to own and drive the project to produce the plushies for the conference. Linda had already elicited some design sketches, which she handed off. Starting with the sketches, Shams located a vendor who could work within an aggressive deadline (competing with Lunar New Year), and started the process of creating the specs for the plushy. That’s right, Dash was originally a Dart mascot, not a Flutter mascot.",
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
  const BlogPostWeb({super.key});

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
              title: "Who is Dash?",
              onPressed: onPressed,
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              "As soon as Shams Zakhour started working as a Dart writer at Google in December 2013, she started advocating for a Dart mascot. After documenting Java for 14 years, she had observed how beloved the Java mascot, Duke, had become, and she wanted something similar for Dart. But the idea didn’t gain momentum until 2017, when one of the Flutter engineers, Nina Chen, suggested it on an internal mailing list. The Flutter VP at the time, Joshy Joseph, approved the idea and asked the organizer for the 2018 Dart Conference, Linda Rasmussen, to make it happen. Once Shams heard about these plans, she rushed to Linda and asked to own and drive the project to produce the plushies for the conference. Linda had already elicited some design sketches, which she handed off. Starting with the sketches, Shams located a vendor who could work within an aggressive deadline (competing with Lunar New Year), and started the process of creating the specs for the plushy. That’s right, Dash was originally a Dart mascot, not a Flutter mascot.",
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
