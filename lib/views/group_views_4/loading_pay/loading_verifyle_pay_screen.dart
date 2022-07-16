import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fruit_market_summer/controller/gobal_variable_food/sizeDevice.dart';
import 'package:fruit_market_summer/views/group_views_2/verify_phone_number_screen/finish_verifyle.dart';
import 'package:fruit_market_summer/views/group_views_4/loading_pay/finish_verifyle_pay_screen.dart';
import 'package:im_animations/im_animations.dart';

class LoadingVerifylePayScreen extends StatefulWidget {
  const LoadingVerifylePayScreen({Key? key}) : super(key: key);

  @override
  _LoadingVerifylePayScreenState createState() =>
      _LoadingVerifylePayScreenState();
}

class _LoadingVerifylePayScreenState extends State<LoadingVerifylePayScreen> {
  bool _bool = false;
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => FinishVerifylePayScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: heightDevice(0.26),
            ),
            SizedBox(
              height: heightDevice(0.25),
              width: witdthDevice(0.25),
              child: Rotate(
                  repeat: true,
                  child: Image.asset(
                      fit: BoxFit.contain, "assets/icons/verifyle.png")),
            ),
            SizedBox(
              height: heightDevice(0.008),
            ),
            Text(
              "Please Wait",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline4,
            )
          ],
        ),
      ),
    );
  }
}
