import 'package:flutter/material.dart';
import 'package:fruit_market_summer/model/food_class/food.dart';

class DetailProduct extends StatelessWidget {
  final Food tempFood;
  const DetailProduct({Key? key, required this.tempFood}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0), // here the desired height
          child: AppBar(
            backgroundColor: Color(0xFF69A03A),
            title: Transform(
              // you can forcefully translate values left side using Transform
              transform: Matrix4.translationValues(-30.0, 20.0, 0.0),
              child: Text(
                "DETAILS",
                style: TextStyle(
                  fontFamily: "poppins",
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            leading: Transform(
              // you can forcefully translate values left side using Transform
              transform: Matrix4.translationValues(0.0, 20.0, 0.0),
              child: GestureDetector(
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 21,
                ),
                onTap: () => Navigator.pop(context),
              ),
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 176,
                width: 350,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18.0),
                  child: Image.asset(tempFood.getImageSrc.toString(),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(height: 20),

              // set Name of Product
              RichText(
                text: TextSpan(
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "poppins",
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                  children: [
                    TextSpan(
                      text: '${tempFood.getName.toString()}\n',
                      style: TextStyle(fontSize: 16),
                    ),

                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 5),
                        child: Text(
                          tempFood.geIntroProduct,
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: "poppins",
                            color: Color(0xFF707070),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),

                    // set Nutition list
                    TextSpan(
                      text: 'Nutrition',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              ListView(
                shrinkWrap: true,
                children: <Widget>[
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Icon(
                        Icons.circle_rounded,
                        size: 10,
                        color: Color(0xFF838181),
                      ),
                      Text('    ${tempFood.getItemNutition(0)}'),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Icon(
                        Icons.circle_rounded,
                        size: 10,
                        color: Color(0xFF838181),
                      ),
                      Text('    ${tempFood.getItemNutition(1)}'),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Icon(
                        Icons.circle_rounded,
                        size: 10,
                        color: Color(0xFF838181),
                      ),
                      Text('    ${tempFood.getItemNutition(2)}'),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Icon(
                        Icons.circle_rounded,
                        size: 10,
                        color: Color(0xFF838181),
                      ),
                      Text('    ${tempFood.getItemNutition(3)}'),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Icon(
                        Icons.circle_rounded,
                        size: 10,
                        color: Color(0xFF838181),
                      ),
                      Text('    ${tempFood.getItemNutition(4)}'),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Icon(
                        Icons.circle_rounded,
                        size: 10,
                        color: Color(0xFF838181),
                      ),
                      Text('    ${tempFood.getItemNutition(5)}'),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Icon(
                        Icons.circle_rounded,
                        size: 10,
                        color: Color(0xFF838181),
                      ),
                      Text('    ${tempFood.getItemNutition(6)}'),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Icon(
                        Icons.circle_rounded,
                        size: 10,
                        color: Color(0xFF838181),
                      ),
                      Text('    ${tempFood.getItemNutition(7)}'),
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.currency_rupee,
                            size: 23,
                            color: Color(0xFF393939),
                          ),
                          Text(
                            '${tempFood.getPrice} Per/ kg',
                            style: TextStyle(
                                fontFamily: "pippins",
                                fontSize: 18,
                                color: Color(0xFF393939),
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 150,
                        height: 40,
                        child: ElevatedButton(
                            onPressed: () {
                              // Navigator.of(context).pushReplacement(MaterialPageRoute(
                              //     builder: (_) => HomeMainScreen()));
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF769E49),
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(5.0),
                              ),
                            ),
                            child: Text(
                              "Buy Now",
                              style: Theme.of(context).textTheme.headline1,
                            )),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
