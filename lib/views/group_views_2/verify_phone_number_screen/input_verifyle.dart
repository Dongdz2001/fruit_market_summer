import 'package:flutter/material.dart';
import 'package:page_views/controller/gobal_variable_food/sizeDevice.dart';
import 'package:page_views/views/group_views_2/verify_phone_number_screen/loading_verifyle.dart';
import 'package:page_views/model/widget_custom/keyborad.dart';

class InputVerifyle extends StatelessWidget {
  const InputVerifyle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? _verificationCode;
    TextEditingController _edtNumberController = TextEditingController();
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: heightDevice(0.2),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Stack(
                  children: [
                    Container(
                      width: witdthDevice(0.15),
                      height: heightDevice(0.075),
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
              SizedBox(height: heightDevice(0.08)),
              SizedBox(
                width: witdthDevice(0.85),
                height: heightDevice(0.07),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (_) => LoadingVerifyle(
                              phone: _edtNumberController.text)));
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
              SizedBox(height: heightDevice(0.1)),
              KeyboradCustom.getWidget(_edtNumberController,
                  LoadingVerifyle(phone: _edtNumberController.text), context),
            ],
          ),
        ),
      ),
    );
  }
}
