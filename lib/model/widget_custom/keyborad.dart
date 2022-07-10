import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fruit_market_summer/views/group_views_2/verify_phone_number_screen/input_verifyle.dart';

class KeyboradCustom {
  static Widget getWidget(
    TextEditingController _edtNumberController,
  ) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              child: Image.asset("assets/image_keyboard_button/1.png"),
              onTap: () {
                _edtNumberController.text += "1";
                _edtNumberController.selection = TextSelection.fromPosition(
                    TextPosition(offset: _edtNumberController.text.length));
              },
            ),
            SizedBox(width: 30),
            GestureDetector(
              child: Image.asset("assets/image_keyboard_button/2.png"),
              onTap: () {
                _edtNumberController.text += "2";
                _edtNumberController.selection = TextSelection.fromPosition(
                    TextPosition(offset: _edtNumberController.text.length));
              },
            ),
            SizedBox(width: 30),
            GestureDetector(
              child: Image.asset("assets/image_keyboard_button/3.png"),
              onTap: () {
                _edtNumberController.text += "3";
                _edtNumberController.selection = TextSelection.fromPosition(
                    TextPosition(offset: _edtNumberController.text.length));
              },
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              child: Image.asset("assets/image_keyboard_button/4.png"),
              onTap: () {
                _edtNumberController.text += "4";
                _edtNumberController.selection = TextSelection.fromPosition(
                    TextPosition(offset: _edtNumberController.text.length));
              },
            ),
            SizedBox(width: 30),
            GestureDetector(
              child: Image.asset("assets/image_keyboard_button/5.png"),
              onTap: () {
                _edtNumberController.text += "5";
                _edtNumberController.selection = TextSelection.fromPosition(
                    TextPosition(offset: _edtNumberController.text.length));
              },
            ),
            SizedBox(width: 30),
            GestureDetector(
              child: Image.asset("assets/image_keyboard_button/6.png"),
              onTap: () {
                _edtNumberController.text += "6";
                _edtNumberController.selection = TextSelection.fromPosition(
                    TextPosition(offset: _edtNumberController.text.length));
              },
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              child: Image.asset("assets/image_keyboard_button/7.png"),
              onTap: () {
                _edtNumberController.text += "7";
                _edtNumberController.selection = TextSelection.fromPosition(
                    TextPosition(offset: _edtNumberController.text.length));
              },
            ),
            SizedBox(width: 30),
            GestureDetector(
              child: Image.asset("assets/image_keyboard_button/8.png"),
              onTap: () {
                _edtNumberController.text += "8";
                _edtNumberController.selection = TextSelection.fromPosition(
                    TextPosition(offset: _edtNumberController.text.length));
              },
            ),
            SizedBox(width: 30),
            GestureDetector(
              child: Image.asset("assets/image_keyboard_button/9.png"),
              onTap: () {
                _edtNumberController.text += "9";
                _edtNumberController.selection = TextSelection.fromPosition(
                    TextPosition(offset: _edtNumberController.text.length));
              },
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              child: Image.asset("assets/image_keyboard_button/delete.png"),
              onTap: () {
                _edtNumberController.text = _edtNumberController.text
                    .substring(0, _edtNumberController.text.length - 1);
                _edtNumberController.selection = TextSelection.fromPosition(
                    TextPosition(offset: _edtNumberController.text.length));
              },
            ),
            SizedBox(width: 70),
            GestureDetector(
              child: Image.asset("assets/image_keyboard_button/0.png"),
              onTap: () {
                _edtNumberController.text += "0";
                _edtNumberController.selection = TextSelection.fromPosition(
                    TextPosition(offset: _edtNumberController.text.length));
              },
            ),
            SizedBox(width: 70),
            GestureDetector(
              child: Image.asset("assets/image_keyboard_button/ok.png"),
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}
