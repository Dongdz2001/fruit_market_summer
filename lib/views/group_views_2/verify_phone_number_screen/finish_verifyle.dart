import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fruit_market_summer/controller/gobal_variable_food/sizeDevice.dart';
import 'package:fruit_market_summer/views/group_views_2/verify_phone_number_screen/pinput_OTP_screen.dart';

class FinishVerifyle extends StatefulWidget {
  const FinishVerifyle({Key? key}) : super(key: key);

  @override
  State<FinishVerifyle> createState() => _FinishVerifyleState();
}

class _FinishVerifyleState extends State<FinishVerifyle> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => PinputOTPScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: heightDevice(0.2),
            ),
            SizedBox(
                height: heightDevice(0.3),
                width: witdthDevice(0.35),
                child: Image.asset(
                    fit: BoxFit.contain, "assets/icons/finish_verifyle.png")),
            Text(
              "Verification Code Send on \n your Registered Mobile Number ",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline4,
            )
          ],
        ),
      ),
    );
  }
}
