import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/sans.dart';
import 'package:flutter_portfolio/components/tabs_mobile.dart';
import 'package:flutter_portfolio/components/url_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomDrawerWeb extends StatelessWidget {
  const CustomDrawerWeb({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 72,
            backgroundColor: Colors.tealAccent,
            child: CircleAvatar(
              radius: 70,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("assets/imgs/profile_picture.jpg"),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Sans(text: "Joaquin Beltran", size: 30.0, isBold: true),
          const SizedBox(
            height: 15,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              UrlLauncher(
                imgPath: 'assets/imgs/portfolio/instagram.svg',
                url: 'https://www.instagram.com',
              ),
              UrlLauncher(
                imgPath: "assets/imgs/portfolio/twitter.svg",
                url: "https://twitter.com/joaquinmxdev",
              ),
              UrlLauncher(
                imgPath: "assets/imgs/portfolio/github.svg",
                url: "https://www.github.com/joaquinMX",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomDrawerMobile extends StatelessWidget {
  const CustomDrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DrawerHeader(
            padding: const EdgeInsets.only(bottom: 20),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 2, color: Colors.black),
              ),
              child: Image.asset(
                "assets/imgs/profile_picture_circle.png",
                filterQuality: FilterQuality.high,
              ),
            ),
          ),
          const TabsMobile(text: "Home", route: '/'),
          const SizedBox(
            height: 20,
          ),
          const TabsMobile(text: "Work", route: "/works"),
          const SizedBox(
            height: 20,
          ),
          const TabsMobile(text: "Blog", route: "/blog"),
          const SizedBox(
            height: 20,
          ),
          const TabsMobile(text: "About", route: "/about"),
          const SizedBox(
            height: 20,
          ),
          const TabsMobile(text: "Contact", route: "/contact"),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: socialLinks(),
          )
        ],
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
          theme: const SvgTheme(
            currentColor: Colors.black,
          ),
          width: 35,
        ));
  }
}
