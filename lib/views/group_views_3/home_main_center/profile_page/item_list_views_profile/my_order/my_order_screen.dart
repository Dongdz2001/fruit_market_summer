import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../../../controller/input_data/init_vegetable.dart';
import '../../../../details_product/detail_product.dart';

class MyOrderScreen extends StatefulWidget {
  const MyOrderScreen({Key? key}) : super(key: key);

  @override
  _MyOrderScreenState createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF69A03A),
        title: Transform(
          // you can forcefully translate values left side using Transform
          transform: Matrix4.translationValues(-30.0, 17.0, 0.0),
          child: Text(
            "My Order",
            style: TextStyle(
              fontFamily: "poppins",
              fontSize: 17,
              fontWeight: FontWeight.w600,
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
      ),
      body: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Container(
          height: 20,
          color: Color(0xFF69A03A),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: listOrganicVegetable.length,
              scrollDirection: Axis.vertical,
              addAutomaticKeepAlives: true,
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(bottom: 2),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      color: Colors.white,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 15, top: 10),
                            height: 100,
                            width: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: FittedBox(
                                fit: BoxFit.cover,
                                child: Image.asset(
                                    listOrganicVegetable[index].getImageSrc),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(height: 6),
                              Container(
                                width:
                                    MediaQuery.of(context).size.width * 0.582,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          listOrganicVegetable[index].getName,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontFamily: "poppins",
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Icon(Icons.arrow_forward_ios),
                                      ],
                                    ),
                                    SizedBox(height: 2),
                                    SizedBox(
                                      width: 120,
                                      child: FittedBox(
                                        fit: BoxFit.fitWidth,
                                        child: RatingBar.builder(
                                          initialRating:
                                              listOrganicVegetable[index]
                                                  .getRatingQuantity,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemPadding:
                                              EdgeInsets.only(right: 2),
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          onRatingUpdate: (rating) {
                                            setState(() {
                                              rating ==
                                                      listOrganicVegetable[
                                                              index]
                                                          .getRatingQuantity
                                                  ? listOrganicVegetable[index]
                                                      .setRatingQuantity = 0
                                                  : listOrganicVegetable[index]
                                                          .setRatingQuantity =
                                                      rating;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 6),
                                    RichText(
                                      text: TextSpan(
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "poppins",
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                        children: [
                                          WidgetSpan(
                                              child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 8, top: 2),
                                            child: Text(
                                              "Rate this Product",
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          )),
                                          WidgetSpan(
                                              child: Text(
                                            "${listOrganicVegetable[index].getDelivered}",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: "poppins",
                                                color: Color.fromARGB(
                                                    255, 36, 36, 36)),
                                          )),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )),
        ),
      ])),
    );
  }
}
