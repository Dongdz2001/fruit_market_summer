import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fruit_market_summer/controller/gobal_variable_food/sizeDevice.dart';
import 'package:fruit_market_summer/views/group_views_3/home_main_center/favourite_page/favourite_screen.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({Key? key}) : super(key: key);

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  List<FocusNode> listfocus = [];
  List<TextEditingController> listEdtController = [];
  int nextCardNumber = 0;
  String temp = "";
  bool checkFlag = true;

  int startCusor = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (var i = 0; i < 4; i++) {
      listEdtController.add(new TextEditingController());
      listfocus.add(new FocusNode());
    }
  }

  @override
  void dispose() {
    for (var i = 0; i < 4; i++) {
      listEdtController[i].dispose();
      listfocus[i].dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            alignment: Alignment.bottomLeft,
            width: witdthDevice(1),
            height: heightDevice(0.125),
            color: Color(0xFF69A03A),
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: ListTile(
                leading: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                title: Transform.translate(
                  offset: Offset(-witdthDevice(0.06), 1),
                  child: const Text(
                    'Add your Card',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "poppins",
                        fontWeight: FontWeight.w600,
                        fontSize: 17),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
              width: witdthDevice(0.58),
              height: heightDevice(0.2),
              child: Image.asset("assets/image_pay/cart.png")),
          SizedBox(height: heightDevice(0.01)),

          // Cardholder Name
          SizedBox(
            width: witdthDevice(0.9),
            child: Text(
              'Cardholder Name',
              style: TextStyle(
                fontFamily: "poppins",
                fontSize: 18,
                color: Color(0xFFB1B1B1),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: heightDevice(0.007)),
          //  Cardholder Name input
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: TextField(
              enableSuggestions: false,
              autocorrect: false,
              style: TextStyle(fontSize: 18),
              decoration: new InputDecoration(
                contentPadding: EdgeInsets.only(left: 15, bottom: 0, top: 0),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Color(0xFFB1B1B1), width: 1.5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(color: Color(0xFFB1B1B1), width: 1.5),
                ),
              ),
            ),
          ),
          SizedBox(height: heightDevice(0.02)),

          // Label Card Number
          SizedBox(
            width: witdthDevice(0.9),
            child: Text(
              'Card Number',
              style: TextStyle(
                fontFamily: "poppins",
                fontSize: 18,
                color: Color(0xFFB1B1B1),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: heightDevice(0.007)),

          // Pinput advand Card Number
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            SizedBox(width: witdthDevice(0.06)),
            // TF 1
            SizedBox(
              width: witdthDevice(0.2),
              child: TextField(
                controller: listEdtController[0],
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                ],
                maxLength: 4,
                enableSuggestions: false,
                autocorrect: false,
                // next TextFeild

                textInputAction: TextInputAction.next,
                //////////////////////////////////////////////////
                style: TextStyle(fontSize: 18),
                decoration: new InputDecoration(
                  counter: Offstage(),
                  contentPadding: EdgeInsets.only(left: 15, bottom: 0, top: 0),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        BorderSide(color: Color(0xFFB1B1B1), width: 1.5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        BorderSide(color: Color(0xFFB1B1B1), width: 1.5),
                  ),
                ),
                onChanged: (value) {
                  if (value.length == 4) {
                    FocusScope.of(context).requestFocus(listfocus[0]);
                  }
                },
              ),
            ),
            SizedBox(width: witdthDevice(0.03)),

            //TF 2
            SizedBox(
              width: witdthDevice(0.2),
              child: TextField(
                controller: listEdtController[1],
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                ],
                maxLength: 4,
                enableSuggestions: false,
                autocorrect: false,
                focusNode: listfocus[0],
                // next TextFeild
                // autofocus: true,
                textInputAction: TextInputAction.next,
                //////////////////////////////////////////////////
                style: TextStyle(fontSize: 18),
                decoration: new InputDecoration(
                  counter: Offstage(),
                  contentPadding: EdgeInsets.only(left: 15, bottom: 0, top: 0),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        BorderSide(color: Color(0xFFB1B1B1), width: 1.5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        BorderSide(color: Color(0xFFB1B1B1), width: 1.5),
                  ),
                ),
                onChanged: (value) {
                  if (value.length == 4) {
                    FocusScope.of(context).requestFocus(listfocus[1]);
                  }
                },
              ),
            ),
            SizedBox(width: witdthDevice(0.03)),

            //TF-3
            SizedBox(
              width: witdthDevice(0.2),
              child: TextField(
                controller: listEdtController[2],
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                ],
                maxLength: 4,
                enableSuggestions: false,
                autocorrect: false,
                focusNode: listfocus[1],
                style: TextStyle(fontSize: 18),
                decoration: new InputDecoration(
                  counter: Offstage(),
                  contentPadding: EdgeInsets.only(left: 15, bottom: 0, top: 0),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        BorderSide(color: Color(0xFFB1B1B1), width: 1.5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        BorderSide(color: Color(0xFFB1B1B1), width: 1.5),
                  ),
                ),
                onChanged: (value) {
                  if (value.length == 4) {
                    FocusScope.of(context).requestFocus(listfocus[2]);
                  }
                },
              ),
            ),
            SizedBox(width: witdthDevice(0.03)),

            //TF-4
            SizedBox(
              width: witdthDevice(0.2),
              child: TextField(
                controller: listEdtController[3],
                focusNode: listfocus[2],
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                ],
                maxLength: 4,
                enableSuggestions: false,
                autocorrect: false,
                style: TextStyle(fontSize: 18),
                decoration: new InputDecoration(
                  counter: Offstage(),
                  contentPadding: EdgeInsets.only(left: 15, bottom: 0, top: 0),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        BorderSide(color: Color(0xFFB1B1B1), width: 1.5),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        BorderSide(color: Color(0xFFB1B1B1), width: 1.5),
                  ),
                ),
                onChanged: (value) {
                  if (value.length == 4) {
                    FocusScope.of(context).unfocus();
                  }
                },
              ),
            ),
            SizedBox(width: witdthDevice(0.03)),
          ]),
          SizedBox(height: heightDevice(0.015)),

          // Valid Thru
          SizedBox(
            width: witdthDevice(0.9),
            child: Text(
              'Valid Thru',
              style: TextStyle(
                fontFamily: "poppins",
                fontSize: 18,
                color: Color(0xFFB1B1B1),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: heightDevice(0.01)),
          //   Valid Thru input
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: witdthDevice(0.02)),
              SizedBox(
                width: witdthDevice(0.538),
                child: TextField(
                  enableSuggestions: false,
                  autocorrect: false,
                  style: TextStyle(fontSize: 18),
                  decoration: new InputDecoration(
                    contentPadding:
                        EdgeInsets.only(left: 15, bottom: 0, top: 0),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide:
                          BorderSide(color: Color(0xFFB1B1B1), width: 1.5),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide:
                          BorderSide(color: Color(0xFFB1B1B1), width: 1.5),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: witdthDevice(0.3),
                child: TextField(
                  enableSuggestions: false,
                  autocorrect: false,
                  style: TextStyle(fontSize: 18),
                  decoration: new InputDecoration(
                    contentPadding:
                        EdgeInsets.only(left: 15, bottom: 0, top: 0),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide:
                          BorderSide(color: Color(0xFFB1B1B1), width: 1.5),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide:
                          BorderSide(color: Color(0xFFB1B1B1), width: 1.5),
                    ),
                  ),
                ),
              ),
              SizedBox(width: witdthDevice(0.01)),
            ],
          ),
          SizedBox(height: heightDevice(0.02)),
          //  CVV/CVC
          SizedBox(
            width: witdthDevice(0.9),
            child: Text(
              'CVV/CVC',
              style: TextStyle(
                fontFamily: "poppins",
                fontSize: 18,
                color: Color(0xFFB1B1B1),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: heightDevice(0.007)),

          //  CVV/CVC
          Row(
            children: [
              SizedBox(width: witdthDevice(0.065)),
              SizedBox(
                width: witdthDevice(0.3),
                child: TextField(
                  enableSuggestions: false,
                  autocorrect: false,
                  style: TextStyle(fontSize: 18),
                  decoration: new InputDecoration(
                    contentPadding:
                        EdgeInsets.only(left: 15, bottom: 0, top: 0),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide:
                          BorderSide(color: Color(0xFFB1B1B1), width: 1.5),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide:
                          BorderSide(color: Color(0xFFB1B1B1), width: 1.5),
                    ),
                  ),
                ),
              ),
              SizedBox(width: witdthDevice(0.05)),
              Text(
                '3 or 4 digit code',
                style: TextStyle(
                    fontFamily: "poppins",
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFB1B1B1)),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: witdthDevice(0.05)),
              Container(
                width: witdthDevice(0.1),
                height: heightDevice(0.1),
                child: ClipRRect(
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Checkbox(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3)),
                        activeColor: Color(0xFF69A03A),
                        value: checkFlag,
                        onChanged: (val) {
                          setState(() {
                            checkFlag = !checkFlag;
                          });
                        }),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: witdthDevice(0.89),
            height: heightDevice(0.07),
            child: ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).pushReplacement(
                  //     MaterialPageRoute(builder: (_) => FavouriteScreen()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF69A03A),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(12.0),
                  ),
                ),
                child: Text(
                  "ADD CARD NUMBER",
                  style: TextStyle(
                    fontFamily: "poppins",
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                )),
          ),
        ]),
      ),
    );
  }
}
