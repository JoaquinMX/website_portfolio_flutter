import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/about_me_section.dart';
import 'package:flutter_portfolio/components/custom_drawer.dart';
import 'package:flutter_portfolio/components/sans.dart';
import 'package:flutter_portfolio/components/service_card.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({super.key});

  @override
  State<AboutMobile> createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(
            size: 35,
            color: Colors.black,
          ),
        ),
        endDrawer: CustomDrawerMobile(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            children: [
              //Introduction
              CircleAvatar(
                radius: 117,
                backgroundColor: Colors.tealAccent,
                child: CircleAvatar(
                  radius: 113,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 110,
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      "assets/imgs/profile_picture_circle.png",
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              AboutMeSectionMobile(),
              SizedBox(height: 40),
              // Web Development
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ServiceCard(
                    imagePath: "assets/imgs/portfolio/webL.png",
                    reverse: false,
                    width: width * 0.6,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Sans(text: "Web Development", size: 20, isBold: true),
                  SizedBox(
                    height: 10,
                  ),
                  Sans(
                    text:
                        "I'm here to build your presence online with state of the art web apps",
                    size: 15,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ServiceCard(
                    imagePath: "assets/imgs/portfolio/app.png",
                    width: width * 0.6,
                    reverse: true,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Sans(text: "App Development", size: 20, isBold: true),
                  SizedBox(
                    height: 10,
                  ),
                  Sans(
                    text:
                        "Do you need a high-performance, responsive and beautiful app? Don't worry I've got you covered",
                    size: 15,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ServiceCard(
                    imagePath: "assets/imgs/portfolio/firebase.png",
                    width: width * 0.6,
                    reverse: false,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Sans(text: "Back-end Development", size: 20, isBold: true),
                  SizedBox(
                    height: 10,
                  ),
                  Sans(
                    text:
                        "Do you want your back-end to be highly scalable and secure? Let's have a conversation on How I can help you with that",
                    size: 15,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
