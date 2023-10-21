import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/contact_me.dart';
import 'package:flutter_portfolio/components/custom_drawer.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({super.key});

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
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
                  "assets/imgs/portfolio/contact_image.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            )
          ];
        },
        body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 25),
            child: ContactMeMobile(
              width: width,
            )),
      ),
    );
  }
}
