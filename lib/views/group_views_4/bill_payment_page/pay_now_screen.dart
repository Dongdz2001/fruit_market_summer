import 'package:flutter/material.dart';

import '../../../controller/gobal_variable_food/sizeDevice.dart';

class PayNowScreen extends StatelessWidget {
  const PayNowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            alignment: Alignment.bottomLeft,
            width: witdthDevice(1),
            height: heightDevice(0.13),
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
                    'Pay Now',
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
          SizedBox(height: heightDevice(0.01)),
        ]),
      ),
    );
  }
}
