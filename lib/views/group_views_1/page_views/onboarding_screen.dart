import 'package:flutter/material.dart';
import 'package:page_views/controller/gobal_variable_food/sizeDevice.dart';
import 'package:page_views/views/group_views_1/page_views/intro_page_1.dart';
import 'package:page_views/views/group_views_1/page_views/intro_page_2.dart';
import 'package:page_views/views/group_views_1/page_views/intro_page_3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:page_views/views/group_views_2/login_screen/home_login_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _controllerPage = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Stack(
        children: [
          PageView(
            controller: _controllerPage,
            // physics: NeverScrollableScrollPhysics(),
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [
              IntroPage1(
                controller: _controllerPage,
              ),
              IntroPage2(),
              IntroPage3(),
            ],
          ),
          Positioned(
            right: witdthDevice(0.12),
            top: heightDevice(0.1),
            child: GestureDetector(
              child: Text(
                "Skips",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "poppins",
                  color: Color(0xFF898989),
                ),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (_) => HomeLoginScreen()));
              },
            ),
          ),
          Container(
            alignment: Alignment(0, heightDevice(0.00065)),
            child: SmoothPageIndicator(
              controller: _controllerPage,
              count: 3,
              effect: SlideEffect(
                  dotWidth: 10.0,
                  dotHeight: 10.0,
                  paintStyle: PaintingStyle.stroke,
                  strokeWidth: 1.5,
                  dotColor: Colors.grey,
                  activeDotColor: Color(0xFF69A03A)),
            ),
          ),
          Container(
            alignment: Alignment(0, heightDevice(0.0011)),
            child: SizedBox(
              width: witdthDevice(0.35),
              height: heightDevice(0.059),
              child: ElevatedButton(
                onPressed: () {
                  if (onLastPage) {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (_) => HomeLoginScreen()));
                  } else {
                    _controllerPage.nextPage(
                      duration: Duration(milliseconds: 400),
                      curve: Curves.easeIn,
                    );
                  }
                },
                child: Text(
                  onLastPage ? "Get Started" : "Next",
                  style: Theme.of(context).textTheme.headline1,
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF69A03A),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
