import 'package:flutter/material.dart';
import 'package:flutter_portfolio/components/sans.dart';

class ServiceCard extends StatefulWidget {
  final String imagePath;
  final String title;
  final String text;
  final fit;
  final reverse;
  final double? width;
  final double? height;
  const ServiceCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.text,
    required this.reverse,
    this.fit,
    this.width,
    this.height,
  });

  @override
  State<ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard>
    with TickerProviderStateMixin {
  late AnimationController _controller =
      AnimationController(vsync: this, duration: const Duration(seconds: 4))
        ..repeat(reverse: true);

  late Animation<Offset> _animation = Tween(
    begin: widget.reverse ? const Offset(0, 0.08) : Offset.zero,
    end: widget.reverse ? Offset.zero : const Offset(0, 0.08),
  ).animate(_controller);
  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Card(
        elevation: 30,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          side: const BorderSide(
            color: Colors.tealAccent,
          ),
        ),
        shadowColor: Colors.tealAccent,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                widget.imagePath,
                height: widget.height ?? 200,
                width: widget.width ?? 200,
                fit: widget.fit,
              ),
              const SizedBox(
                height: 10,
              ),
              Sans(
                text: widget.title,
                size: 15,
                isBold: true,
              ),
              Sans(
                text: widget.text,
                size: 13,
                width: widget.width ?? 200,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
