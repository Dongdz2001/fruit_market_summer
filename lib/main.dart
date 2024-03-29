import 'package:flutter/material.dart';
import 'package:page_views/controller/gobal_variable_food/sizeDevice.dart';
import 'package:page_views/views/group_views_1/page_views/onboarding_screen.dart';
import 'package:page_views/views/group_views_1/splash_screen/splashscreen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fruits App Summer',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontSize: 14.0,
              fontFamily: "poppins",
              color: Colors.white,
              fontWeight: FontWeight.w600),
          headline2: TextStyle(
              fontSize: 15.0, fontFamily: "poppins", color: Color(0xFF78787C)),
          headline3: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2F2E41)),
          headline4: TextStyle(
              fontSize: 14.0,
              fontFamily: "poppins",
              color: Colors.black,
              fontWeight: FontWeight.w500),
          headline5: TextStyle(
              fontSize: 14.0,
              fontFamily: "poppins",
              color: Color(0xFF909090),
              fontWeight: FontWeight.w500),
          headline6: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
          bodyText1: TextStyle(
              fontSize: 14.0,
              fontFamily: "poppins",
              color: Colors.white,
              fontWeight: FontWeight.w500),
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    widthSizeDevide = MediaQuery.of(context).size.width;
    heightSizeDevide = MediaQuery.of(context).size.height;
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(body: Slapscreen());
  }
}
