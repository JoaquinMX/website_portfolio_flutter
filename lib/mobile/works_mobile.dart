import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/custom_drawer.dart';
import 'package:flutter_portfolio/components/sans.dart';
import 'package:flutter_portfolio/components/single_showcase.dart';

class WorksMobile extends StatefulWidget {
  const WorksMobile({super.key});

  @override
  State<WorksMobile> createState() => _WorksMobileState();
}

class _WorksMobileState extends State<WorksMobile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      endDrawer: const CustomDrawerMobile(),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 400,
              backgroundColor: Colors.white,
              iconTheme: const IconThemeData(
                size: 35,
                color: Colors.black,
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/imgs/portfolio/works.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            )
          ];
        },
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                Sans(text: "Works", size: 35, isBold: true),
                SizedBox(
                  height: 20,
                ),
                SingleShowcaseMobile(
                  width: width,
                  imagePath: "assets/imgs/portfolio/sostek_cover.jpg",
                  title: "Sostek",
                  text:
                      "Sustainability news app looking to improve knowledge of students of the degrees of Architecture and Design in all the topics involving Sustainability",
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
