import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/custom_text_form.dart';
import 'package:flutter_portfolio/components/sans.dart';
import 'package:flutter_portfolio/components/service_card.dart';
import 'package:flutter_portfolio/components/skill_capsule.dart';
import 'package:flutter_portfolio/components/tabs_web.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => _LandingPageWebState();
}

Widget urlLauncher(String imgPath, String url) {
  return IconButton(
    icon: SvgPicture.asset(
      imgPath,
      width: 35,
    ),
    onPressed: () async {
      await launchUrl(
        Uri.parse(url),
      );
    },
  );
}

class _LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 72,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 70,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/imgs/profile_picture.jpg"),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Sans(text: "Joaquin Beltran", size: 30.0, isBold: true),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                urlLauncher(
                  "assets/imgs/portfolio/instagram.svg",
                  'https://www.instagram.com',
                ),
                urlLauncher(
                  "assets/imgs/portfolio/twitter.svg",
                  "https://twitter.com/joaquinmxdev",
                ),
                urlLauncher(
                  "assets/imgs/portfolio/github.svg",
                  "https://www.github.com/joaquinMX",
                ),
              ],
            ),
          ],
        ),
      ),
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
                        'assets/imgs/profile_picture.jpg',
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
                  "assets/imgs/portfolio/web.jpg",
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
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ServiceCard(
                      imagePath: "assets/imgs/portfolio/webL.png",
                      title: "Web Development",
                      text:
                          "Pixel perfect designs for Web apps, responsive in all screen and performing properly around browsers.",
                      reverse: true,
                    ),
                    ServiceCard(
                      imagePath: "assets/imgs/portfolio/app.png",
                      title: "App Development",
                      text:
                          "Great performance apps, working properly in all devices included Android, iOS and Huawei (EMUI).",
                      reverse: false,
                    ),
                    ServiceCard(
                      imagePath: "assets/imgs/portfolio/firebase.png",
                      title: "Back-end Development",
                      text:
                          "DB for back-end, using the best practices. Use of NodeJS, MongoDB, Firebase and Supabase.",
                      reverse: true,
                    )
                  ],
                ),
              ],
            ),
          ),
          // Forth section
          SizedBox(
            height: heightDevice,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Sans(
                  text: "Contact Me",
                  size: 40,
                  isBold: true,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        CustomTextForm(
                          heading: "First Name",
                          hintText: "Please enter your first name",
                          containerWidth: 350,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        CustomTextForm(
                          heading: "Email",
                          hintText: "Please enter your email",
                          containerWidth: 350,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CustomTextForm(
                          heading: "Last Name",
                          hintText: "Please enter your last name",
                          containerWidth: 350,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        CustomTextForm(
                          heading: "Phone Number",
                          hintText: "Please enter your phone number",
                          containerWidth: 350,
                        ),
                      ],
                    ),
                  ],
                ),
                CustomTextForm(
                  heading: "Message",
                  hintText: "Please enter your message",
                  containerWidth: widthDevice / 1.5,
                  maxLines: 10,
                ),
                MaterialButton(
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 60,
                  minWidth: 200,
                  color: Colors.tealAccent,
                  child: Sans(text: "Submit", size: 20, isBold: true),
                  onPressed: () {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
