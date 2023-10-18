import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabWeb extends StatefulWidget {
  final title;
  final route;
  const TabWeb({required this.title, super.key, required this.route});

  @override
  State<TabWeb> createState() => _TabWebState();
}

class _TabWebState extends State<TabWeb> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(widget.route);
      },
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            isSelected = true;
          });
        },
        onExit: (_) {
          setState(() {
            isSelected = false;
          });
        },
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 100),
          curve: Curves.easeInOutCubic,
          style: isSelected
              ? GoogleFonts.roboto(
                  fontSize: 23,
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                  decorationThickness: 2,
                  decorationColor: Colors.tealAccent,
                )
              : GoogleFonts.roboto(
                  fontSize: 20,
                  color: Colors.black,
                ),
          child: Text(
            widget.title,
          ),
        ),
      ),
    );
  }
}
