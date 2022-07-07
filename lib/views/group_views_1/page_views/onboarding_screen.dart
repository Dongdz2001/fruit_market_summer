import 'package:flutter/material.dart';
import 'package:fruit_market_summer/views/group_views_1/page_views/intro_page_1.dart';
import 'package:fruit_market_summer/views/group_views_1/page_views/intro_page_2.dart';
import 'package:fruit_market_summer/views/group_views_1/page_views/intro_page_3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:fruit_market_summer/views/group_views_2/login_screen/home_login_screen.dart';

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
            left: 318,
            top: 90,
            child: Text(
              "Skips",
              style: TextStyle(
                fontSize: 14,
                fontFamily: "poppins",
                color: Color(0xFF898989),
              ),
            ),
          ),
          GestureDetector(
            child: const Text('Skips'),
            onTap: () {
              // _controllerPage.jumpToPage(3);
            },
          ),
          Container(
            alignment: Alignment(0, 0.7),
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
            alignment: Alignment(0, 0.9),
            child: SizedBox(
              width: 148,
              height: 46,
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
