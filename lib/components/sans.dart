import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sans extends StatelessWidget {
  final text;
  final size;
  final double? width;
  final bool isBold;
  Sans(
      {required this.text,
      required this.size,
      this.width,
      this.isBold = false,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: width != null ? BoxConstraints(maxWidth: width!) : null,
      child: Text(
        text,
        overflow: TextOverflow.ellipsis,
        maxLines: 10,
        style: GoogleFonts.openSans(
          fontSize: size,
          fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}
