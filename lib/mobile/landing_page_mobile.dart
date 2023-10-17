import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/tabs_mobile.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageMobile extends StatefulWidget {
  const LandingPageMobile({super.key});

  @override
  State<LandingPageMobile> createState() => _LandingPageMobileState();
}

class _LandingPageMobileState extends State<LandingPageMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          size: 35,
          color: Colors.black,
        ),
      ),
      endDrawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DrawerHeader(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 2, color: Colors.black),
                ),
                child: Image.asset("assets/imgs/profile_picture_circle.png"),
              ),
              padding: EdgeInsets.only(bottom: 20),
            ),
            TabsMobile(text: "Home", route: '/'),
            SizedBox(
              height: 20,
            ),
            TabsMobile(text: "Work", route: "/works"),
            SizedBox(
              height: 20,
            ),
            TabsMobile(text: "Blog", route: "/blog"),
            SizedBox(
              height: 20,
            ),
            TabsMobile(text: "About", route: "/about"),
            SizedBox(
              height: 20,
            ),
            TabsMobile(text: "Contact", route: "/contact"),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: socialLinks(),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> socialLinks() {
    return [
      socialButton(
        "https://www.instagram.com",
        "assets/imgs/portfolio/instagram.svg",
      ),
      socialButton(
        "https://www.twitter.com",
        "assets/imgs/portfolio/twitter.svg",
      ),
      socialButton(
        "https://www.github.com/joaquinmx",
        "assets/imgs/portfolio/github.svg",
      ),
    ];
  }

  Widget socialButton(String urlPath, String imgPath) {
    return IconButton(
        onPressed: () async => await launchUrl(
              Uri(path: urlPath),
            ),
        icon: SvgPicture.asset(
          imgPath,
          theme: SvgTheme(
            currentColor: Colors.black,
          ),
          width: 35,
        ));
  }
}
