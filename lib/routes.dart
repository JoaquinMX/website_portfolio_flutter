import 'package:flutter/material.dart';
import 'package:flutter_portfolio/common/blog.dart';
import 'package:flutter_portfolio/mobile/about_mobile.dart';
import 'package:flutter_portfolio/mobile/contact_mobile.dart';
import 'package:flutter_portfolio/mobile/landing_page_mobile.dart';
import 'package:flutter_portfolio/mobile/works_mobile.dart';
import 'package:flutter_portfolio/web/about_web.dart';
import 'package:flutter_portfolio/web/contact_web.dart';
import 'package:flutter_portfolio/web/landing_page_web.dart';
import 'package:flutter_portfolio/web/works_web.dart';

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
      case '/about':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 768) {
              return const AboutWeb();
            }
            return const AboutMobile();
          }),
        );
      case '/blog':
        return MaterialPageRoute(
            settings: settings, builder: (_) => const Blog());
      case '/works':
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 768) {
              return const WorksWeb();
            }
            return const WorksMobile();
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
