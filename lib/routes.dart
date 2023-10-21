import 'package:flutter/material.dart';
import 'package:flutter_portfolio/mobile/contact_mobile.dart';
import 'package:flutter_portfolio/mobile/landing_page_mobile.dart';
import 'package:flutter_portfolio/web/contact_web.dart';
import 'package:flutter_portfolio/web/landing_page_web.dart';

class Routes {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 768) {
              return const LandingPageWeb();
            }
            return const LandingPageMobile();
          }),
        );
      case '/contact':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 768) {
              return const ContactWeb();
            }
            return const ContactMobile();
          }),
        );
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 768) {
              return const LandingPageWeb();
            }
            return const LandingPageMobile();
          }),
        );
    }
  }
}
