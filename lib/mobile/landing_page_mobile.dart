import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/about_me_section.dart';
import 'package:flutter_portfolio/components/contact_me.dart';
import 'package:flutter_portfolio/components/custom_drawer.dart';
import 'package:flutter_portfolio/components/service_card.dart';
import 'package:flutter_portfolio/components/services_section.dart';

import '../components/sans.dart';

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

    return SafeArea(
      child: Scaffold(
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
        endDrawer: const CustomDrawerMobile(),
        body: ListView(
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
            // First Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                    mainAxisAlignment: MainAxisAlignment.start,
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
            const AboutMeSectionMobile(),
            const SizedBox(
              height: 60,
            ),
            // Third Section
            ServicesSectionMobile(
              width: width,
              service1: service1(width),
              service2: service2(width),
              service3: service3(width),
            ),
            const SizedBox(
              height: 60,
            ),
            // Fourth Section
            ContactMeMobile(width: width),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }

  ServiceCard service1(width) => ServiceCard(
        imagePath: "assets/imgs/portfolio/webL.png",
        title: "Web Development",
        text:
            "Pixel perfect designs for Web apps, responsive in all screen and performing properly around browsers.",
        reverse: false,
        width: width * 0.6,
      );

  ServiceCard service2(width) => ServiceCard(
        imagePath: "assets/imgs/portfolio/app.png",
        title: "App Development",
        text:
            "Great performance apps, working properly in all devices included Android, iOS and Huawei (EMUI).",
        width: width * 0.6,
        reverse: true,
      );

  ServiceCard service3(width) => ServiceCard(
        imagePath: "assets/imgs/portfolio/firebase.png",
        title: "Back-end Development",
        text:
            "DB for back-end, using the best practices. Use of NodeJS, MongoDB, Firebase and Supabase.",
        width: width * 0.6,
        reverse: false,
      );
}
