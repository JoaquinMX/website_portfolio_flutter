import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/custom_appbar_title.dart';
import 'package:flutter_portfolio/components/custom_drawer.dart';
import 'package:flutter_portfolio/components/sans.dart';
import 'package:flutter_portfolio/components/service_card.dart';
import 'package:flutter_portfolio/components/skill_capsule.dart';

class AboutWeb extends StatefulWidget {
  const AboutWeb({super.key});

  @override
  State<AboutWeb> createState() => _AboutWebState();
}

class _AboutWebState extends State<AboutWeb> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      drawer: CustomDrawerWeb(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
          size: 25,
        ),
        title: const CustomAppBarTitleWeb(),
      ),
      body: ListView(
        children: [
          //About Me First section
          SizedBox(
            height: 500,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Sans(text: "About Me", size: 40, isBold: true),
                    SizedBox(
                      height: 15,
                    ),
                    Sans(
                      text:
                          "Hello! I'm Joaquin Beltran and I specialize in Flutter development, I strives to ensure astounding performance with state of the art security for Android, iOS, Web, Mac and Linux",
                      size: 15,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SkillCapsule(text: "Flutter"),
                        SizedBox(
                          width: 7,
                        ),
                        SkillCapsule(text: "Firebase"),
                        SizedBox(
                          width: 7,
                        ),
                        SkillCapsule(text: "Android"),
                        SizedBox(
                          width: 7,
                        ),
                        SkillCapsule(text: "iOS"),
                        SizedBox(
                          width: 7,
                        ),
                        SkillCapsule(text: "Web"),
                        SizedBox(
                          width: 7,
                        ),
                        SkillCapsule(text: "Mac"),
                        SizedBox(
                          width: 7,
                        ),
                        SkillCapsule(text: "Linux"),
                      ],
                    )
                  ],
                ),
                CircleAvatar(
                  radius: 117,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 110,
                    backgroundColor: Colors.white,
                    child: Image.asset(
                      "assets/imgs/profile_picture_circle.png",
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Web Development Second section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ServiceCard(
                height: 250,
                width: 250,
                imagePath: "assets/imgs/portfolio/webL.png",
              ),
              SizedBox(
                width: width / 3,
                child: Column(
                  children: [
                    Sans(
                      text: "Web Development",
                      size: 30,
                      isBold: true,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Sans(
                      text:
                          "I'm here to build your presence online with state of the art web apps",
                      size: 15,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          // App Development, third section,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: width / 3,
                child: Column(
                  children: [
                    Sans(text: "App Development", size: 30, isBold: true),
                    SizedBox(
                      height: 15,
                    ),
                    Sans(
                      text:
                          "Do you need a high-performance, responsive and beautiful app? Don't worry I've got you covered",
                      size: 15,
                    ),
                  ],
                ),
              ),
              ServiceCard(
                imagePath: "assets/imgs/portfolio/app.png",
                height: 250,
                width: 250,
                reverse: true,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          // Back-end Development, fourth section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ServiceCard(
                imagePath: "assets/imgs/portfolio/firebase.png",
                height: 250,
                width: 250,
              ),
              SizedBox(
                width: width / 3,
                child: Column(
                  children: [
                    Sans(text: "Back-end Development", size: 30, isBold: true),
                    SizedBox(height: 15),
                    Sans(
                        text:
                            "Do you want your back-end to be highly scalable and secure? Let's have a conversation on how I can help you with that",
                        size: 15),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
