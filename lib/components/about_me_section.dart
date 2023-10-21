import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/sans.dart';
import 'package:flutter_portfolio/components/skill_capsule.dart';

class AboutMeSectionMobile extends StatelessWidget {
  const AboutMeSectionMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Sans(
            text: "About Me",
            size: 35,
            isBold: true,
          ),
          SizedBox(
            height: 10,
          ),
          Sans(
            text:
                "Hello! I'm Joaquin Beltran and I specialize in Flutter development, I strive to ensure astounding performance with state of the art security for Android, iOS, Web, Mac and Linux",
            size: 15,
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
    );
  }
}
