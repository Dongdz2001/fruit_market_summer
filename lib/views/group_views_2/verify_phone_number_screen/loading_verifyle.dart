import 'package:flutter/material.dart';

class LoadingVerifyle extends StatefulWidget {
  const LoadingVerifyle({Key? key}) : super(key: key);

  @override
  State<LoadingVerifyle> createState() => _LoadingVerifyleState();
}

class _LoadingVerifyleState extends State<LoadingVerifyle> {
  bool _bool = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedRotation(
            turns: 720,
            duration: Duration(seconds: 10),
            child: Image.asset("assets/icons/verifyle.png")),
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
