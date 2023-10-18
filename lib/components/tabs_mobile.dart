import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsMobile extends StatefulWidget {
  final text;
  final route;
  const TabsMobile({super.key, required this.text, required this.route});

  @override
  State<TabsMobile> createState() => _TabsMobileState();
}

class _TabsMobileState extends State<TabsMobile> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.of(context).pushNamed(widget.route);
      },
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      height: 50,
      minWidth: 200,
      color: Colors.black,
      child: Text(
        widget.text,
        style: GoogleFonts.openSans(fontSize: 20, color: Colors.white),
      ),
    );
  }
}
