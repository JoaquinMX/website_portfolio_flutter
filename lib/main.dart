import 'package:flutter/material.dart';
import 'package:flutter_portfolio/mobile/landing_page_mobile.dart';
import 'package:flutter_portfolio/web/landing_page_web.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 768) {
          return const LandingPageWeb();
        } else {
          return const LandingPageMobile();
        }
      }),
    );
  }
}
