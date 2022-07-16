import 'package:flutter/material.dart';
import 'package:fruit_market_summer/controller/gobal_variable_food/sizeDevice.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'onboarding_screen.dart';

class IntroPage1 extends StatelessWidget {
  final PageController controller;
  const IntroPage1({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              height: heightDevice(0.3),
              width: witdthDevice(0.8),
              child: Image.asset(
                "assets/image_page_views/pageviews_1.png",
                fit: BoxFit.fitWidth,
              )),
          SizedBox(height: heightDevice(0.08)),
          Text(
            "E Shopping",
            style: Theme.of(context).textTheme.headline3,
          ),
          SizedBox(height: heightDevice(0.01)),
          Text(
            "Explore top organic fruits & grab them",
            style: Theme.of(context).textTheme.headline2,
          ),
          SizedBox(height: heightDevice(0.01)),
        ],
      ),
    );
  }
}
