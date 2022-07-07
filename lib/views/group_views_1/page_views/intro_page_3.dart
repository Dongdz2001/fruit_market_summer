import 'package:flutter/material.dart';

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
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Image.asset("assets/image_page_views/pageviews_3.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Text(
              "E Shopping",
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Text(
              "Explore top organic fruits & grab them",
              style: Theme.of(context).textTheme.headline2,
            ),
          ),
        ],
      ),
    );
  }
}
