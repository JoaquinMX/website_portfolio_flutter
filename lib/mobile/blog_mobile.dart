import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/abel_custom.dart';
import 'package:flutter_portfolio/components/blog_post.dart';
import 'package:flutter_portfolio/components/custom_drawer.dart';

class BlogMobile extends StatefulWidget {
  const BlogMobile({super.key});

  @override
  State<BlogMobile> createState() => _BlogMobileState();
}

class _BlogMobileState extends State<BlogMobile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer: CustomDrawerMobile(),
        body: NestedScrollView(
          body: ListView(
            children: [BlogPostMobile(), BlogPostMobile(), BlogPostMobile()],
          ),
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.white,
                iconTheme: const IconThemeData(
                  size: 35,
                  color: Colors.black,
                ),
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 4,
                    ),
                    child: AbelCustom(
                      text: "Welcome to my blog",
                      size: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  background: Image.asset(
                    'assets/imgs/portfolio/blog.jpg',
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover,
                  ),
                ),
                expandedHeight: 400,
              )
            ];
          },
        ),
      ),
    );
  }
}
