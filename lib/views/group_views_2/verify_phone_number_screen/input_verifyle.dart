import 'package:flutter/material.dart';
import 'package:fruit_market_summer/views/group_views_2/verify_phone_number_screen/loading_verifyle.dart';

class InputVerifyle extends StatelessWidget {
  const InputVerifyle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _edtNumberController = TextEditingController();
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 110,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Stack(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.5, color: Colors.grey),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                          child: Text(
                        "+91",
                        style: Theme.of(context).textTheme.headline5,
                      )),
                    ),
                    TextField(
                      controller: _edtNumberController,
                      keyboardType: TextInputType.none,
                      style: TextStyle(fontSize: 16),
                      decoration: new InputDecoration(
                        contentPadding:
                            EdgeInsets.only(left: 70, top: 21, bottom: 20),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.5),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              BorderSide(color: Colors.grey, width: 1.5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80, bottom: 40),
                child: SizedBox(
                  width: 335,
                  height: 52,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF69A03A),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(12.0),
                        ),
                      ),
                      child: Text(
                        "VERIFY",
                        style: Theme.of(context).textTheme.headline1,
                      )),
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child:
                            Image.asset("assets/image_keyboard_button/1.png"),
                        onTap: () {
                          _edtNumberController.text += "1";
                          _edtNumberController.selection =
                              TextSelection.fromPosition(TextPosition(
                                  offset: _edtNumberController.text.length));
                        },
                      ),
                      SizedBox(width: 50),
                      GestureDetector(
                        child:
                            Image.asset("assets/image_keyboard_button/2.png"),
                        onTap: () {
                          _edtNumberController.text += "2";
                          _edtNumberController.selection =
                              TextSelection.fromPosition(TextPosition(
                                  offset: _edtNumberController.text.length));
                        },
                      ),
                      SizedBox(width: 50),
                      GestureDetector(
                        child:
                            Image.asset("assets/image_keyboard_button/3.png"),
                        onTap: () {
                          _edtNumberController.text += "3";
                          _edtNumberController.selection =
                              TextSelection.fromPosition(TextPosition(
                                  offset: _edtNumberController.text.length));
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child:
                            Image.asset("assets/image_keyboard_button/4.png"),
                        onTap: () {
                          _edtNumberController.text += "4";
                          _edtNumberController.selection =
                              TextSelection.fromPosition(TextPosition(
                                  offset: _edtNumberController.text.length));
                        },
                      ),
                      SizedBox(width: 50),
                      GestureDetector(
                        child:
                            Image.asset("assets/image_keyboard_button/5.png"),
                        onTap: () {
                          _edtNumberController.text += "5";
                          _edtNumberController.selection =
                              TextSelection.fromPosition(TextPosition(
                                  offset: _edtNumberController.text.length));
                        },
                      ),
                      SizedBox(width: 50),
                      GestureDetector(
                        child:
                            Image.asset("assets/image_keyboard_button/6.png"),
                        onTap: () {
                          _edtNumberController.text += "6";
                          _edtNumberController.selection =
                              TextSelection.fromPosition(TextPosition(
                                  offset: _edtNumberController.text.length));
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child:
                            Image.asset("assets/image_keyboard_button/7.png"),
                        onTap: () {
                          _edtNumberController.text += "7";
                          _edtNumberController.selection =
                              TextSelection.fromPosition(TextPosition(
                                  offset: _edtNumberController.text.length));
                        },
                      ),
                      SizedBox(width: 50),
                      GestureDetector(
                        child:
                            Image.asset("assets/image_keyboard_button/8.png"),
                        onTap: () {
                          _edtNumberController.text += "8";
                          _edtNumberController.selection =
                              TextSelection.fromPosition(TextPosition(
                                  offset: _edtNumberController.text.length));
                        },
                      ),
                      SizedBox(width: 50),
                      GestureDetector(
                        child:
                            Image.asset("assets/image_keyboard_button/9.png"),
                        onTap: () {
                          _edtNumberController.text += "9";
                          _edtNumberController.selection =
                              TextSelection.fromPosition(TextPosition(
                                  offset: _edtNumberController.text.length));
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: Image.asset(
                            "assets/image_keyboard_button/delete.png"),
                        onTap: () {
                          _edtNumberController.text = _edtNumberController.text
                              .substring(
                                  0, _edtNumberController.text.length - 1);
                          _edtNumberController.selection =
                              TextSelection.fromPosition(TextPosition(
                                  offset: _edtNumberController.text.length));
                        },
                      ),
                      SizedBox(width: 70),
                      GestureDetector(
                        child:
                            Image.asset("assets/image_keyboard_button/0.png"),
                        onTap: () {
                          _edtNumberController.text += "0";
                          _edtNumberController.selection =
                              TextSelection.fromPosition(TextPosition(
                                  offset: _edtNumberController.text.length));
                        },
                      ),
                      SizedBox(width: 70),
                      GestureDetector(
                        child:
                            Image.asset("assets/image_keyboard_button/ok.png"),
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (_) => LoadingVerifyle()));
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
