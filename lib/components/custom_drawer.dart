import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/sans.dart';
import 'package:flutter_portfolio/components/url_launcher.dart';

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
