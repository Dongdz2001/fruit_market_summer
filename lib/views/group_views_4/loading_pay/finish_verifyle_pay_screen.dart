import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fruit_market_summer/controller/gobal_variable_food/sizeDevice.dart';
import 'package:fruit_market_summer/views/group_views_2/verify_phone_number_screen/pinput_OTP_screen.dart';
import 'package:fruit_market_summer/views/group_views_3/home_main_center/home_main_screen.dart';
import 'package:fruit_market_summer/views/group_views_4/bill_payment_page/pay_now_screen.dart';

class FinishVerifylePayScreen extends StatefulWidget {
  const FinishVerifylePayScreen({Key? key}) : super(key: key);

  @override
  _FinishVerifylePayScreenState createState() =>
      _FinishVerifylePayScreenState();
}

class _FinishVerifylePayScreenState extends State<FinishVerifylePayScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pop(context);
      // .pushReplacement(MaterialPageRoute(builder: (_) => HomeMainScreen()));
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
              "Payment Successful \n Your Order is Booked.",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline4,
            )
          ],
        ),
      ),
    );
  }
}
