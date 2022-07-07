import 'dart:developer';
import 'package:flutter/material.dart';

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
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Image.asset("assets/image_page_views/pageviews_2.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Text(
              "Delivery on the way",
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text(
              "Get your order by speed delivery",
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
        ],
      ),
    );
  }
}
