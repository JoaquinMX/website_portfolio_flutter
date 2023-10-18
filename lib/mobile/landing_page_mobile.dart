import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/custom_text_form.dart';
import 'package:flutter_portfolio/components/sans.dart';
import 'package:flutter_portfolio/components/service_card.dart';
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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(
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
              padding: const EdgeInsets.only(bottom: 20),
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
      ),
      body: ListView(
        children: [
          // First Section
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 117,
                  backgroundColor: Colors.tealAccent,
                  child: CircleAvatar(
                    radius: 110,
                    backgroundColor: Colors.white,
                    backgroundImage:
                        AssetImage("assets/imgs/profile_picture_circle.png"),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
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
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: Sans(text: "Hello I'm", size: 15, isBold: true),
                    ),
                    Sans(text: "Joaquin Beltran", size: 40, isBold: true),
                    Sans(text: "Flutter Developer", size: 20),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Wrap(
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
                    const SizedBox(
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
          const SizedBox(
            height: 90,
          ),
          // Second Section
          Padding(
            padding: const EdgeInsets.only(
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
                  margin: const EdgeInsets.symmetric(horizontal: 50),
                  child: Sans(
                    text:
                        "Hello! I'm Joaquin Beltran and I specialize in Flutter development, I strive to ensure astounding performance with state of the art security for Android, iOS, Web, Mac and Linux",
                    size: 15,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Wrap(
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
          const SizedBox(
            height: 60,
          ),
          // Third Section
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Sans(text: "What I do", size: 35, isBold: true),
              ServiceCard(
                imagePath: "assets/imgs/portfolio/webL.png",
                title: "Web Development",
                text:
                    "Pixel perfect designs for Web apps, responsive in all screen and performing properly around browsers.",
                reverse: false,
                width: width * 0.6,
              ),
              const SizedBox(
                height: 35,
              ),
              ServiceCard(
                imagePath: "assets/imgs/portfolio/app.png",
                title: "App Development",
                text:
                    "Great performance apps, working properly in all devices included Android, iOS and Huawei (EMUI).",
                width: width * 0.6,
                reverse: true,
              ),
              const SizedBox(
                height: 35,
              ),
              ServiceCard(
                imagePath: "assets/imgs/portfolio/firebase.png",
                title: "Back-end Development",
                text:
                    "DB for back-end, using the best practices. Use of NodeJS, MongoDB, Firebase and Supabase.",
                width: width * 0.6,
                reverse: false,
              ),
              const SizedBox(
                height: 60,
              ),
              // Fourth Section
              Wrap(
                spacing: 20.0,
                runSpacing: 20.0,
                alignment: WrapAlignment.center,
                children: [
                  Sans(text: "Contact Me", size: 35, isBold: true),
                  CustomTextForm(
                    heading: "First name",
                    hintText: "Enter your first name",
                    containerWidth: width / 1.4,
                  ),
                  CustomTextForm(
                    heading: "Last name",
                    hintText: "Enter your last name",
                    containerWidth: width / 1.4,
                  ),
                  CustomTextForm(
                    heading: "Email",
                    hintText: "Enter your email",
                    containerWidth: width / 1.4,
                  ),
                  CustomTextForm(
                    heading: "Phone Number",
                    hintText: "Enter your phone number",
                    containerWidth: width / 1.4,
                  ),
                  CustomTextForm(
                    heading: "Message",
                    hintText: "Message",
                    containerWidth: width / 1.4,
                    maxLines: 10,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 60,
                    minWidth: width / 2.2,
                    color: Colors.tealAccent,
                    child: Sans(text: 'Submit', size: 20, isBold: true),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              )
            ],
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
