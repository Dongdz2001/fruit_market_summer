import 'package:flutter/material.dart';
import 'package:fruit_market_summer/views/group_views_2/verify_phone_number_screen/enter_basic_info.dart';
import 'package:fruit_market_summer/views/widget_custom/keyborad.dart';
import 'package:pinput/pinput.dart';
import 'package:fruit_market_summer/views/widget_custom/keyborad.dart';

class PinputOTPScreen extends StatelessWidget {
  const PinputOTPScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    bool _flagverifyle = false;
    TextEditingController _edtNumberController = TextEditingController();
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(180),
        color: Color(0xFFF0F0F0),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(180),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                "Enter The 4 digit code that was \n send to your Mobile Number ",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(
                height: 40,
              ),
              Pinput(
                keyboardType: TextInputType.none,
                controller: _edtNumberController,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme,
                submittedPinTheme: submittedPinTheme,
                validator: (s) {
                  if (s != '2784') {
                    _edtNumberController.text = "";
                  }
                  _flagverifyle = (s == '2784');
                  Color pickerColor = Color.fromARGB(255, 11, 244, 30);
                  // String testingColorString = pickerColor.toString();

                  Color newColor = new Color(pickerColor.value);
                  return s == '2784' ? 'Correct' : 'Pin is incorrect';
                },
                pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                showCursor: true,
                onCompleted: (pin) => print(pin),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 10),
                child: SizedBox(
                  width: 335,
                  height: 52,
                  child: ElevatedButton(
                      onPressed: () {
                        _flagverifyle
                            ? Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (_) => EnterBasicInfo()))
                            : _flagverifyle = false;
                      },
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                      "Resend Again?",
                      style: TextStyle(color: Colors.blue[400]),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              KeyboradCustom.getWidget(_edtNumberController),
            ],
          ),
        ),
      ),
    );
  }
}
