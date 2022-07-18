import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fruit_market_summer/controller/gobal_variable_food/sizeDevice.dart';
import 'package:fruit_market_summer/views/group_views_1/page_views/onboarding_screen.dart';

class Slapscreen extends StatefulWidget {
  const Slapscreen({Key? key}) : super(key: key);

  @override
  _SlapscreenState createState() => _SlapscreenState();
}

class _SlapscreenState extends State<Slapscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => OnboardingScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(105, 160, 58, 1),
      height: heightDevice(1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Center(
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 42,
                    fontWeight: FontWeight.bold),
                children: const <TextSpan>[
                  TextSpan(
                    text: 'F',
                    style: TextStyle(fontSize: 50),
                  ),
                  TextSpan(text: 'ruit Market'),
                ],
              ),
            ),
          ),
          SizedBox(
            height: heightDevice(0.2),
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/image_slap_screen/mix_fruit_png_11.png",
                fit: BoxFit.fitWidth,
              )),
        ],
      ),
    );
  }
}
