import 'package:flutter/material.dart';
import 'package:fruit_market_summer/controller/gobal_variable_food/sizeDevice.dart';
import 'package:fruit_market_summer/views/group_views_1/page_views/onboarding_screen.dart';
import 'package:fruit_market_summer/views/group_views_2/verify_phone_number_screen/input_verifyle.dart';

class HomeLoginScreen extends StatelessWidget {
  const HomeLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _edt_number = TextEditingController();
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: heightDevice(0.25),
                  width: witdthDevice(0.6),
                  child: Image.asset(
                    "assets/image_home/home_store.png",
                    fit: BoxFit.contain,
                  )),
              SizedBox(
                height: heightDevice(0.01),
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                      color: Color(0xFF69A03A),
                      fontFamily: "Poppins",
                      fontSize: 42,
                      fontWeight: FontWeight.bold),
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'F',
                      style: TextStyle(fontSize: 50),
                    ),
                    TextSpan(text: 'ruit Market'),
                  ],
                ),
              ),
              SizedBox(
                height: heightDevice(0.05),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                    controller: _edt_number,
                    decoration: new InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 31, 12, 237),
                            width: 1.5),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 146, 137, 137),
                            width: 1.5),
                      ),
                      hintText: 'Enter Your Mobile Number',
                    ),
                    keyboardType: TextInputType.number,
                    onSubmitted: (value) {
                      if ((value.length == 12)) {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (_) => InputVerifyle()));
                        print("okkok1");
                      }
                    }),
              ),
              SizedBox(
                height: heightDevice(0.1),
              ),
              Center(
                  child: Text(
                "OR",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              )),
              SizedBox(
                height: heightDevice(0.05),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          side: BorderSide(
                            width: 1.5,
                            color: Colors.grey,
                          )),
                      child: SizedBox(
                        width: witdthDevice(0.34),
                        height: heightDevice(0.06),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Image.asset("assets/icons/google.png"),
                            ),
                            Text(
                              "Login In with",
                              style: Theme.of(context).textTheme.headline2,
                            )
                          ],
                        ),
                      ),
                      onPressed: () {},
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          side: BorderSide(
                            width: 1.5,
                            color: Colors.grey,
                          )),
                      child: SizedBox(
                        width: witdthDevice(0.34),
                        height: heightDevice(0.06),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Image.asset("assets/icons/facebook.png"),
                            ),
                            Text(
                              "Login In with",
                              style: Theme.of(context).textTheme.headline2,
                            )
                          ],
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
