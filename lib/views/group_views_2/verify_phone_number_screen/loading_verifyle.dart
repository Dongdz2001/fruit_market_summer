import 'dart:async';

import 'package:flutter/material.dart';
import 'package:page_views/controller/gobal_variable_food/sizeDevice.dart';
import 'package:page_views/views/group_views_2/verify_phone_number_screen/finish_verifyle.dart';
import 'package:im_animations/im_animations.dart';

class LoadingVerifyle extends StatefulWidget {
  final String phone;
  const LoadingVerifyle({Key? key, required this.phone}) : super(key: key);

  @override
  State<LoadingVerifyle> createState() => _LoadingVerifyleState();
}

class _LoadingVerifyleState extends State<LoadingVerifyle> {
  bool _bool = false;
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (_) => FinishVerifyle(
                phone: widget.phone,
              )));
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
              "Verifying Your Mobile Number",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline4,
            )
          ],
        ),
      ),
    );
  }
}




//  AnimatedPhysicalModel(
//           child: Image.asset("assets/icons/verifyle.png"),
//           shape: BoxShape.rectangle,
//           color: Colors.white,
//           duration: Duration(microseconds: 3000),
//           elevation: _bool ? 0 : 15.0,
//           shadowColor: Colors.white,

// AnimatedRotation(
//           turns: 360,
//           duration: Duration(seconds: 5),
//           child: Image.asset("assets/icons/verifyle.png"),
