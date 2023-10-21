import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/sans.dart';
import 'package:flutter_portfolio/components/service_card.dart';

class ServicesSectionMobile extends StatelessWidget {
  const ServicesSectionMobile({
    super.key,
    required this.width,
    required this.service1,
    required this.service2,
    required this.service3,
  });
  final double width;
  final ServiceCard service1;
  final ServiceCard service2;
  final ServiceCard service3;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Sans(text: "What I do", size: 35, isBold: true),
        service1,
        const SizedBox(
          height: 35,
        ),
        service2,
        const SizedBox(
          height: 35,
        ),
        service3,
      ],
    );
  }
}
