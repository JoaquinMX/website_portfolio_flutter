import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/sans.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextForm extends StatelessWidget {
  final String heading;
  final String hintText;
  final double containerWidth;
  int? maxLines;
  final TextEditingController controller;
  final validator;

  CustomTextForm({
    super.key,
    required this.heading,
    required this.hintText,
    required this.containerWidth,
    this.maxLines,
    required this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Sans(text: heading, size: 16.0),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              width: containerWidth,
              child: TextFormField(
                validator: validator,
                controller: controller,
                maxLines: maxLines ?? 1,
                decoration: InputDecoration(
                  errorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  focusedErrorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.teal,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.tealAccent,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  hintText: hintText,
                  hintStyle: GoogleFonts.poppins(fontSize: 14),
                ),
                // validator: (text) {
                //   if (RegExp("\\bjoaquin\\b", caseSensitive: false)
                //       .hasMatch(text.toString())) {
                //     return "Match Found";
                //   }
                //   return "Please enter a valid name";
                // },
                // autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
