import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/custom_appbar_title.dart';
import 'package:flutter_portfolio/components/custom_drawer.dart';
import 'package:flutter_portfolio/components/sans.dart';
import 'package:flutter_portfolio/components/single_showcase.dart';

class WorksWeb extends StatefulWidget {
  const WorksWeb({super.key});

  @override
  State<WorksWeb> createState() => _WorksWebState();
}

class _WorksWebState extends State<WorksWeb> {
  @override
  Widget build(BuildContext context) {
    double widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
        drawer: const CustomDrawerWeb(),
        backgroundColor: Colors.white,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 550,
                backgroundColor: Colors.white,
                iconTheme: const IconThemeData(
                  size: 25,
                  color: Colors.black,
                ),
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    "assets/imgs/portfolio/works.jpg",
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  ),
                ),
                title: const CustomAppBarTitleWeb(),
              )
            ];
          },
          body: ListView(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Sans(text: "Works", size: 40, isBold: true),
                  SingleShowcase(
                    widthDevice: widthDevice,
                    imagePath: 'assets/imgs/portfolio/sostek_cover.jpg',
                    title: "Sostek",
                    text:
                        "Sustainability news app looking to improve knowledge of students of the degrees of Architecture and Design in all the topics involving Sustainability",
                  )
                ],
              )
            ],
          ),
        ));
  }
}
