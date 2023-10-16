import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/sans.dart';
import 'package:flutter_portfolio/components/service_card.dart';
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
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
          size: 25,
        ),
        title: const Row(
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
          SizedBox(
            height: heightDevice - 56, // 56 is the height of the app bar
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.tealAccent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      child: Sans(
                        text: "Hello I'm",
                        size: 15,
                        isBold: true,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Sans(text: "Joaquin Beltran", size: 55, isBold: true),
                    Sans(text: "Flutter Developer", size: 30),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.email),
                        const SizedBox(
                          width: 20,
                        ),
                        Sans(text: "contact@joaquinmx.com", size: 15),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.call),
                        const SizedBox(
                          width: 20,
                        ),
                        Sans(text: "+52 555 555 555", size: 15),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.location_pin),
                        const SizedBox(
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
          SizedBox(
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
                    const SizedBox(
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
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: widthDevice / 2,
                      child: const Wrap(
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
          ),
          // Third Section
          SizedBox(
              height: heightDevice / 1.3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Sans(
                    text: "What I do",
                    size: 40,
                    isBold: true,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ServiceCard(
                          imagePath: "imgs/portfolio/webL.png",
                          title: "Web Development",
                          text:
                              "Pixel perfect designs for Web apps, responsive in all screen and performing properly around browsers.",
                        ),
                        ServiceCard(
                          imagePath: "imgs/portfolio/app.png",
                          title: "App Development",
                          text:
                              "Great performance apps, working properly in all devices included Android, iOS and Huawei (EMUI).",
                        ),
                        ServiceCard(
                          imagePath: "imgs/portfolio/firebase.png",
                          title: "Back-end Development",
                          text:
                              "DB for back-end, using the best practices. Use of NodeJS, MongoDB, Firebase and Supabase.",
                        )
                      ])
                ],
              )),
        ],
      ),
    );
  }
}
