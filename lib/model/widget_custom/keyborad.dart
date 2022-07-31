import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_views/controller/gobal_variable_food/sizeDevice.dart';
import 'package:page_views/views/group_views_2/verify_phone_number_screen/input_verifyle.dart';
import 'package:page_views/views/group_views_2/verify_phone_number_screen/loading_verifyle.dart';

class KeyboradCustom {
  static Widget getWidget(
    TextEditingController _edtNumberController,
    Widget widgetTemp,
    BuildContext context,
  ) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              child: SizedBox(
                width: witdthDevice(0.16),
                height: heightDevice(0.08),
                child: Image.asset(
                    fit: BoxFit.cover, "assets/image_keyboard_button/1.png"),
              ),
              onTap: () {
                _edtNumberController.text += "1";
                _edtNumberController.selection = TextSelection.fromPosition(
                    TextPosition(offset: _edtNumberController.text.length));
              },
            ),
            SizedBox(width: witdthDevice(0.1)),
            GestureDetector(
              child: SizedBox(
                width: witdthDevice(0.16),
                height: heightDevice(0.08),
                child: Image.asset(
                    fit: BoxFit.cover, "assets/image_keyboard_button/2.png"),
              ),
              onTap: () {
                _edtNumberController.text += "2";
                _edtNumberController.selection = TextSelection.fromPosition(
                    TextPosition(offset: _edtNumberController.text.length));
              },
            ),
            SizedBox(width: witdthDevice(0.1)),
            GestureDetector(
              child: SizedBox(
                width: witdthDevice(0.16),
                height: heightDevice(0.08),
                child: Image.asset(
                    fit: BoxFit.cover, "assets/image_keyboard_button/3.png"),
              ),
              onTap: () {
                _edtNumberController.text += "3";
                _edtNumberController.selection = TextSelection.fromPosition(
                    TextPosition(offset: _edtNumberController.text.length));
              },
            ),
          ],
        ),
        SizedBox(height: heightDevice(0.03)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              child: SizedBox(
                width: witdthDevice(0.16),
                height: heightDevice(0.08),
                child: Image.asset(
                    fit: BoxFit.cover, "assets/image_keyboard_button/4.png"),
              ),
              onTap: () {
                _edtNumberController.text += "4";
                _edtNumberController.selection = TextSelection.fromPosition(
                    TextPosition(offset: _edtNumberController.text.length));
              },
            ),
            SizedBox(width: witdthDevice(0.1)),
            GestureDetector(
              child: SizedBox(
                width: witdthDevice(0.16),
                height: heightDevice(0.08),
                child: Image.asset(
                    fit: BoxFit.cover, "assets/image_keyboard_button/5.png"),
              ),
              onTap: () {
                _edtNumberController.text += "5";
                _edtNumberController.selection = TextSelection.fromPosition(
                    TextPosition(offset: _edtNumberController.text.length));
              },
            ),
            SizedBox(width: witdthDevice(0.1)),
            GestureDetector(
              child: SizedBox(
                width: witdthDevice(0.16),
                height: heightDevice(0.08),
                child: Image.asset(
                    fit: BoxFit.cover, "assets/image_keyboard_button/6.png"),
              ),
              onTap: () {
                _edtNumberController.text += "6";
                _edtNumberController.selection = TextSelection.fromPosition(
                    TextPosition(offset: _edtNumberController.text.length));
              },
            ),
          ],
        ),
        SizedBox(height: heightDevice(0.03)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              child: SizedBox(
                width: witdthDevice(0.16),
                height: heightDevice(0.08),
                child: Image.asset(
                    fit: BoxFit.cover, "assets/image_keyboard_button/7.png"),
              ),
              onTap: () {
                _edtNumberController.text += "7";
                _edtNumberController.selection = TextSelection.fromPosition(
                    TextPosition(offset: _edtNumberController.text.length));
              },
            ),
            SizedBox(width: witdthDevice(0.1)),
            GestureDetector(
              child: SizedBox(
                width: witdthDevice(0.16),
                height: heightDevice(0.08),
                child: Image.asset(
                    fit: BoxFit.cover, "assets/image_keyboard_button/8.png"),
              ),
              onTap: () {
                _edtNumberController.text += "8";
                _edtNumberController.selection = TextSelection.fromPosition(
                    TextPosition(offset: _edtNumberController.text.length));
              },
            ),
            SizedBox(width: witdthDevice(0.1)),
            GestureDetector(
              child: SizedBox(
                width: witdthDevice(0.16),
                height: heightDevice(0.08),
                child: Image.asset(
                    fit: BoxFit.cover, "assets/image_keyboard_button/9.png"),
              ),
              onTap: () {
                _edtNumberController.text += "9";
                _edtNumberController.selection = TextSelection.fromPosition(
                    TextPosition(offset: _edtNumberController.text.length));
              },
            ),
          ],
        ),
        SizedBox(height: heightDevice(0.03)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              child: SizedBox(
                width: witdthDevice(0.16),
                height: heightDevice(0.04),
                child: Image.asset(
                    fit: BoxFit.contain,
                    "assets/image_keyboard_button/delete.png"),
              ),
              onTap: () {
                if (_edtNumberController.text.length > 0) {
                  _edtNumberController.text = _edtNumberController.text
                      .substring(0, _edtNumberController.text.length - 1);
                  _edtNumberController.selection = TextSelection.fromPosition(
                      TextPosition(offset: _edtNumberController.text.length));
                }
              },
            ),
            SizedBox(
              width: witdthDevice(0.11),
              height: heightDevice(0.1),
            ),
            GestureDetector(
              child: SizedBox(
                width: witdthDevice(0.16),
                height: heightDevice(0.08),
                child: Image.asset(
                    fit: BoxFit.cover, "assets/image_keyboard_button/0.png"),
              ),
              onTap: () {
                _edtNumberController.text += "0";
                _edtNumberController.selection = TextSelection.fromPosition(
                    TextPosition(offset: _edtNumberController.text.length));
              },
            ),
            SizedBox(
              width: witdthDevice(0.11),
              height: heightDevice(0.1),
            ),
            GestureDetector(
              child: SizedBox(
                width: witdthDevice(0.16),
                height: heightDevice(0.04),
                child: Image.asset(
                    fit: BoxFit.contain, "assets/image_keyboard_button/ok.png"),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => widgetTemp));
              },
            ),
          ],
        ),
      ],
    );
  }
}
