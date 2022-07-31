import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:page_views/controller/gobal_variable_food/sizeDevice.dart';

class IntroPage2 extends StatefulWidget {
  const IntroPage2({Key? key}) : super(key: key);

  @override
  _IntroPage2State createState() => _IntroPage2State();
}

class _IntroPage2State extends State<IntroPage2> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _edtcontroller = TextEditingController();

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              height: heightDevice(0.3),
              width: witdthDevice(0.8),
              child: Image.asset(
                "assets/image_page_views/pageviews_2.png",
                fit: BoxFit.fitWidth,
              )),
          SizedBox(height: heightDevice(0.08)),
          Text(
            "Delivery on the way",
            style: Theme.of(context).textTheme.headline3,
          ),
          SizedBox(height: heightDevice(0.01)),
          Text(
            "Get your order by speed delivery",
            style: Theme.of(context).textTheme.headline2,
          ),
          SizedBox(height: heightDevice(0.01)),
        ],
      ),
    );
  }
}
