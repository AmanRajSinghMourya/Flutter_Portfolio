import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
    required this.largeMobile,
  });
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  final Widget largeMobile;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width <= 500;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 800;

  static bool isLargeMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 1160;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1200;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    if (_size.width >= 1200)
      return desktop;
    else if (_size.width >= 1160)
      return largeMobile;
    else if (_size.width >= 700)
      return tablet;
    else
      return mobile;
  }
}
