import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/sans.dart';
import 'package:flutter_portfolio/components/skill_capsule.dart';
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
      extendBodyBehindAppBar: true,
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
      body: ListView(
        children: [
          // First Section
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 117,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 110,
                    backgroundColor: Colors.white,
                    backgroundImage:
                        AssetImage("assets/imgs/profile_picture_circle.png"),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(
                            20,
                          ),
                          topRight: Radius.circular(
                            20,
                          ),
                          bottomRight: Radius.circular(
                            20,
                          ),
                        ),
                      ),
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: Sans(text: "Hello I'm", size: 15, isBold: true),
                    ),
                    Sans(text: "Joaquin Beltran", size: 40, isBold: true),
                    Sans(text: "Flutter Developer", size: 20),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 3,
                      children: [
                        Icon(
                          Icons.email,
                        ),
                        Icon(
                          Icons.call,
                        ),
                        Icon(
                          Icons.location_pin,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 9,
                      children: [
                        Sans(
                          text: "contact@joaquinmx.com",
                          size: 15,
                        ),
                        Sans(text: "(123) 456-7890", size: 15),
                        Sans(
                          text: "North America",
                          size: 15,
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 90,
          ),
          // Second Section
          Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Sans(
                  text: "About Me",
                  size: 35,
                  isBold: true,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  child: Sans(
                    text:
                        "Hello! I'm Joaquin Beltran and I specialize in Flutter development, I strive to ensure astounding performance with state of the art security for Android, iOS, Web, Mac and Linux",
                    size: 15,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Wrap(
                  spacing: 7.0,
                  runSpacing: 7.0,
                  children: [
                    SkillCapsule(text: "Flutter"),
                    SkillCapsule(text: "Firebase"),
                    SkillCapsule(text: "Android"),
                    SkillCapsule(text: "iOS"),
                    SkillCapsule(text: "Web"),
                    SkillCapsule(text: "Mac"),
                    SkillCapsule(text: "Linux"),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 60,
          ),
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
          theme: SvgTheme(
            currentColor: Colors.black,
          ),
          width: 35,
        ));
  }
}
