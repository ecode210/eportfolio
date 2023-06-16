import 'package:flutter/material.dart';

class Breakpoints extends StatelessWidget {
  const Breakpoints({
    Key? key,
    this.web = const SizedBox(),
    this.tablet = const SizedBox(),
    this.mobile = const SizedBox(),
  }) : super(key: key);
  final Widget web;
  final Widget tablet;
  final Widget mobile;

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width <= 450) {
      return mobile;
    } else if (MediaQuery.of(context).size.width <= 990) {
      return tablet;
    } else {
      return web;
    }
  }
}
