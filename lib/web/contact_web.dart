import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/contact_me.dart';
import 'package:flutter_portfolio/components/custom_appbar_title.dart';
import 'package:flutter_portfolio/components/custom_drawer.dart';

class ContactWeb extends StatefulWidget {
  const ContactWeb({super.key});

  @override
  State<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends State<ContactWeb> {
  @override
  Widget build(BuildContext context) {
    double widthDevice = MediaQuery.of(context).size.width;
    double heightDevice = MediaQuery.of(context).size.height;
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
                  "assets/imgs/portfolio/contact_image.jpg",
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                ),
              ),
              title: const CustomAppBarTitleWeb(),
            )
          ];
        },
        body: SingleChildScrollView(
          child: ContactMeWeb(
              heightDevice: heightDevice, widthDevice: widthDevice),
        ),
      ),
    );
  }
}
