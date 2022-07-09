import 'dart:async';

import 'package:flutter/material.dart';
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
              height: 200,
            ),
            Image.asset("assets/icons/finish_verifyle.png"),
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                "Verification Code Send on \n your Registered Mobile Number ",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline4,
              ),
            )
          ],
        ),
      ),
    );
  }
}
