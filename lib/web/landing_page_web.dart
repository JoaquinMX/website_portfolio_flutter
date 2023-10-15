import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/sans.dart';
import 'package:flutter_portfolio/components/skill_capsule.dart';
import 'package:flutter_portfolio/components/tabs_web.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
          size: 25,
        ),
        title: Row(
          children: [
            Spacer(
              flex: 3,
            ),
            TabWeb(title: 'Home'),
            Spacer(),
            TabWeb(title: 'Works'),
            Spacer(),
            TabWeb(title: 'Blog'),
            Spacer(),
            TabWeb(title: 'About'),
            Spacer(),
            TabWeb(title: 'Contact'),
            Spacer(),
          ],
        ),
      ),
      body: ListView(
        children: [
          // First Section
          Container(
            height: heightDevice - 56, // 56 is the height of the app bar
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      child: Sans(
                        text: "Hello I'm",
                        size: 15,
                        isBold: true,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Sans(text: "Joaquin Beltran", size: 55, isBold: true),
                    Sans(text: "Flutter Developer", size: 30),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Icon(Icons.email),
                        SizedBox(
                          width: 20,
                        ),
                        Sans(text: "contact@joaquinmx.com", size: 15),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(Icons.call),
                        SizedBox(
                          width: 20,
                        ),
                        Sans(text: "+52 555 555 555", size: 15),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_pin),
                        SizedBox(
                          width: 20,
                        ),
                        Sans(text: "North America", size: 15),
                      ],
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 147,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 143,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 140,
                      backgroundColor: Colors.grey[50],
                      backgroundImage: const AssetImage(
                        'imgs/profile_picture.jpg',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Second Section
          Container(
            height: heightDevice / 1.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "imgs/portfolio/web.jpg",
                  width: widthDevice / 2.5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Sans(
                      text: "About Me",
                      size: 40,
                      isBold: true,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Sans(
                      text:
                          "I like making challenging funny code. I love creating mobile and web solutions.",
                      size: 15,
                      width: widthDevice / 2,
                    ),
                    Sans(
                      text:
                          "I specialize in Flutter Development providing solutions with a single codebase for multiple platforms such as Android, iOS, Huawei, Web, Mac and Windows.",
                      size: 15,
                      width: widthDevice / 2,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: widthDevice / 2,
                      child: Wrap(
                        spacing: 10,
                        runSpacing: 10,
                        children: [
                          SkillCapsule(text: 'Flutter'),
                          SkillCapsule(text: 'Firebase'),
                          SkillCapsule(text: 'Supabase'),
                          SkillCapsule(text: 'MongoDB'),
                          SkillCapsule(text: 'Git'),
                          SkillCapsule(text: 'MySQL'),
                          SkillCapsule(text: 'NodeJS'),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
