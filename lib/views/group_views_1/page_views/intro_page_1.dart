import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'onboarding_screen.dart';

class IntroPage1 extends StatelessWidget {
  final PageController controller;
  const IntroPage1({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Image.asset("assets/image_page_views/pageviews_1.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Text(
              "E Shopping",
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text(
              "Explore top organic fruits & grab them",
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
        ],
      ),
    );
  }
}
