import 'package:flutter/material.dart';
import 'package:page_views/controller/gobal_variable_food/sizeDevice.dart';

class IntroPage3 extends StatefulWidget {
  const IntroPage3({Key? key}) : super(key: key);

  @override
  _IntroPage3State createState() => _IntroPage3State();
}

class _IntroPage3State extends State<IntroPage3> {
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
                "assets/image_page_views/pageviews_3.png",
                fit: BoxFit.fitWidth,
              )),
          SizedBox(height: heightDevice(0.1)),
          Text(
            "E Shopping",
            style: Theme.of(context).textTheme.headline3,
          ),
          SizedBox(height: heightDevice(0.01)),
          Text(
            "Explore top organic fruits & grab them",
            style: Theme.of(context).textTheme.headline2,
          ),
          SizedBox(height: heightDevice(0.026)),
        ],
      ),
    );
  }
}
