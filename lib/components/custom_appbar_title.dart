import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/tabs_web.dart';

class CustomAppBarTitleWeb extends StatelessWidget {
  const CustomAppBarTitleWeb({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Spacer(
          flex: 3,
        ),
        TabWeb(title: 'Home', route: '/'),
        Spacer(),
        TabWeb(title: 'Works', route: '/works'),
        Spacer(),
        TabWeb(title: 'Blog', route: '/blog'),
        Spacer(),
        TabWeb(title: 'About', route: '/about'),
        Spacer(),
        TabWeb(title: 'Contact', route: '/contact'),
        Spacer(),
      ],
    );
  }
}
