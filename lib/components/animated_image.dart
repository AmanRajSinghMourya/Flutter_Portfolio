import 'package:flutter/material.dart';
import 'package:portfolio/constraints.dart';
import 'package:portfolio/responsive.dart';

class AnimatedImage extends StatefulWidget {
  const AnimatedImage({super.key, this.height = 300, this.width = 250});
  final double? width;
  final double? height;
  @override
  State<AnimatedImage> createState() => AnimatedImageState();
}

class AnimatedImageState extends State<AnimatedImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true); // Repeat the animation loop
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final value = _controller.value;
        return Transform.translate(
          offset: Offset(0, 2 * value), // Move the container up and down
          child: Container(
            height: widget.height!,
            width: widget.width!,
            padding: const EdgeInsets.all(padding / 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(colors: [
                Colors.pinkAccent,
                Colors.blue,
              ]),
              boxShadow: const [
                BoxShadow(
                  color: Colors.pink,
                  offset: Offset(-2, 0),
                  blurRadius: 20,
                ),
                BoxShadow(
                  color: Colors.blue,
                  offset: Offset(2, 0),
                  blurRadius: 20,
                ),
              ],
            ),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Image.asset(
                'assets/loading_image.png',
                height: ResponsiveLayout.isLargeMobile(context)
                    ? MediaQuery.sizeOf(context).width * 0.2
                    : ResponsiveLayout.isTablet(context)
                        ? MediaQuery.sizeOf(context).width * 0.14
                        : 200,
                width: ResponsiveLayout.isLargeMobile(context)
                    ? MediaQuery.sizeOf(context).width * 0.2
                    : ResponsiveLayout.isTablet(context)
                        ? MediaQuery.sizeOf(context).width * 0.14
                        : 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }
}
