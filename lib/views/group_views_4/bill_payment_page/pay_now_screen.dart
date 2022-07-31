import 'package:flutter/material.dart';
import 'package:page_views/controller/input_data/init_user.dart';
import 'package:page_views/views/group_views_4/bill_payment_page/add_card_screen.dart';
import 'package:page_views/views/group_views_4/loading_pay/loading_verifyle_pay_screen.dart';

import '../../../controller/gobal_variable_food/sizeDevice.dart';

class PayNowScreen extends StatelessWidget {
  const PayNowScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          // App bar custom container
          Container(
            alignment: Alignment.bottomLeft,
            width: witdthDevice(1),
            height: heightDevice(0.13),
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: ListTile(
                leading: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
                title: Transform.translate(
                  offset: Offset(-witdthDevice(0.06), 1),
                  child: Text(
                    "Total Bill: Rs ${manish_chutake.getSumListOrder()}",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "poppins",
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: heightDevice(0.01)),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // position start map default
              Container(
                height: heightDevice(0.06),
                child: ListTile(
                  leading: Transform.translate(
                      offset: Offset(0, 5),
                      child: ImageIcon(
                        AssetImage("assets/image_pay/market.png"),
                      )),
                  title: Transform.translate(
                      offset: Offset(-16, -8),
                      child: const Text('Organic Fruit Shop')),
                  subtitle: Transform.translate(
                      offset: Offset(-16, -8),
                      child: const Text('2 Items : Delivery Time 30 Min')),
                ),
              ),
              // line dashed stand
              Container(
                  height: heightDevice(0.05),
                  alignment: Alignment(-witdthDevice(0.0022), 0),
                  child: Image.asset(
                    "assets/image_pay/dotted_line.png",
                    color: Colors.grey,
                    fit: BoxFit.fill,
                  )),
              Container(
                height: heightDevice(0.04),
                child: ListTile(
                  leading: Transform.translate(
                      offset: Offset(0, -14),
                      child: ImageIcon(
                        AssetImage("assets/image_pay/pin.png"),
                      )),
                  title: Transform.translate(
                      offset: Offset(-16, -6),
                      child: const Text('Home Address')),
                  subtitle: Transform.translate(
                      offset: Offset(-16, -6),
                      child: const Text(
                          'D Block Ram Nagar ,Near SaiPetrol \nPump Ring Road Nagpur-440001')),
                ),
              ),
              SizedBox(height: heightDevice(0.04)),
              Container(
                width: witdthDevice(0.9),
                height: 1,
                color: Colors.grey[300],
              ),
              SizedBox(height: heightDevice(0.02)),

              // Credit/Debit Cards
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Credit/Debit Cards',
                      style: TextStyle(
                          fontFamily: "poppins",
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddCardScreen(),
                          )),
                      child: Text(
                        'ADD NEW CARD',
                        style: TextStyle(
                            color: Color(0xFF69A03A),
                            fontFamily: "poppins",
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              ),

              // icon credit card
              SizedBox(height: heightDevice(0.01)),
              Container(
                height: heightDevice(0.053),
                child: ListTile(
                  leading: Transform.translate(
                      offset: Offset(0, -8),
                      child: ImageIcon(
                        AssetImage("assets/image_pay/finder_credit.png"),
                        size: 32,
                      )),
                  title: Transform.translate(
                      offset: Offset(-16, -10),
                      child: Text(
                        '**************${manish_chutake.getUserCreditCard.getItemPart4CharacterCardNumber(3)}',
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFF909090)),
                      )),
                  subtitle: Transform.translate(
                      offset: Offset(-16, -18),
                      child: Text(
                        '${manish_chutake.getUserCreditCard.getCardholderName} ',
                        style: TextStyle(fontSize: 12),
                      )),
                ),
              ),
              Container(
                width: witdthDevice(0.9),
                height: 1,
                color: Colors.grey[300],
              ),

              // Save and Pay via cards and icon pay
              SizedBox(height: heightDevice(0.01)),
              Container(
                  alignment: Alignment(-witdthDevice(0.0022), 0),
                  child: Text(
                    'Save and Pay via cards',
                    style: TextStyle(
                      fontFamily: "poppins",
                      fontSize: 13,
                      color: Color(0xFF909090),
                    ),
                  )),
              SizedBox(height: heightDevice(0.01)),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                        height: heightDevice(0.05),
                        width: witdthDevice(0.14),
                        child: Image.asset("assets/image_pay/master_card.png")),
                    SizedBox(width: 20),
                    SizedBox(
                        height: heightDevice(0.05),
                        width: witdthDevice(0.14),
                        child: Image.asset("assets/image_pay/maes_tro.png")),
                    SizedBox(width: 25),
                    SizedBox(
                        height: heightDevice(0.05),
                        width: witdthDevice(0.14),
                        child: Image.asset("assets/image_pay/visa_card.png")),
                  ],
                ),
              ),
              SizedBox(height: heightDevice(0.01)),
              Container(
                  alignment: Alignment(-witdthDevice(0.0022), 0),
                  child: Text(
                    'Wallet Method',
                    style: TextStyle(
                        fontFamily: "poppins",
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  )),
              // phone pay
              SizedBox(height: heightDevice(0.02)),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                        height: heightDevice(0.05),
                        width: witdthDevice(0.14),
                        child: Image.asset("assets/image_pay/phone_pay.png")),
                    SizedBox(width: 20),
                    const Text(
                      'Phone pay',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: heightDevice(0.015),
              ),
              Container(
                width: witdthDevice(0.9),
                height: 1,
                color: Colors.grey[300],
              ),
              // Google pay
              SizedBox(height: heightDevice(0.02)),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                        height: heightDevice(0.05),
                        width: witdthDevice(0.14),
                        child: Image.asset("assets/image_pay/google_pay.png")),
                    SizedBox(width: 20),
                    const Text(
                      'Google pay',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: heightDevice(0.015),
              ),
              Container(
                width: witdthDevice(0.9),
                height: 1,
                color: Colors.grey[300],
              ),
              // Pay pal
              SizedBox(height: heightDevice(0.02)),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                        height: heightDevice(0.05),
                        width: witdthDevice(0.14),
                        child: Image.asset("assets/image_pay/paypal.png")),
                    SizedBox(width: 20),
                    const Text(
                      'Pay pal',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: heightDevice(0.06),
              ),

              // Pay Now button
              SizedBox(
                width: witdthDevice(0.89),
                height: heightDevice(0.07),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (_) => LoadingVerifylePayScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF69A03A),
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(12.0),
                      ),
                    ),
                    child: Text(
                      "PAY NOW",
                      style: TextStyle(
                        fontFamily: "poppins",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    )),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
