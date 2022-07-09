import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fruit_market_summer/controller/input_data/init_vegetable.dart';

class VegetablesPageviews extends StatefulWidget {
  const VegetablesPageviews({Key? key}) : super(key: key);

  @override
  _VegetablesPageviewsState createState() => _VegetablesPageviewsState();
}

class _VegetablesPageviewsState extends State<VegetablesPageviews> {
  double back_press_rating_bar = 0;
  bool flag_favourite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // List Organic Vegetables
              RichText(
                text: TextSpan(
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "poppins",
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'Organic Vegetables  ',
                    ),
                    TextSpan(
                      text: '(20% Off)',
                      style: TextStyle(color: Color(0xFF4CA300)),
                    ),
                  ],
                ),
              ),
              Text(
                "Pick up from organic farms",
                style: TextStyle(
                  fontFamily: "poppins",
                ),
              ),
              Container(
                  height: 230,
                  child: ListView.builder(
                      itemCount: listOrganicVegetable.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                        right: 15, top: 10, bottom: 10),
                                    height: 143,
                                    width: 118,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: FittedBox(
                                        fit: BoxFit.fitHeight,
                                        child: Image.asset(
                                            listOrganicVegetable[index]
                                                .getImageSrc),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      right: 25,
                                      top: 15,
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            listOrganicVegetable[index]
                                                    .setFavoutite =
                                                !listOrganicVegetable[index]
                                                    .getFavoutite;
                                          });
                                        },
                                        child: Image.asset(listOrganicVegetable[
                                                    index]
                                                .getFavoutite
                                            ? "assets/icons/favourite.png"
                                            : "assets/icons/unfavourite.png"),
                                      )),
                                ],
                              ),
                              SizedBox(
                                width: 90,
                                child: FittedBox(
                                  fit: BoxFit.fitWidth,
                                  child: RatingBar.builder(
                                    initialRating: listOrganicVegetable[index]
                                        .getRatingQuantity,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemPadding: EdgeInsets.only(right: 2),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      setState(() {
                                        rating ==
                                                listOrganicVegetable[index]
                                                    .getRatingQuantity
                                            ? listOrganicVegetable[index]
                                                .setRatingQuantity = 0
                                            : listOrganicVegetable[index]
                                                .setRatingQuantity = rating;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "poppins",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                  children: [
                                    TextSpan(
                                      text:
                                          '${listOrganicVegetable[index].getName.toString()}\n',
                                    ),
                                    WidgetSpan(
                                      child: Icon(
                                        Icons.currency_rupee_rounded,
                                        size: 19,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          '${listOrganicVegetable[index].getPrice.toString()} Per/ kg',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: "poppins",
                                          color: Color(0xFF707070)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ))),
              // List Mixed Vegetables Pack (10% Off)
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "poppins",
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                    children: const <TextSpan>[
                      TextSpan(
                        text: 'Mixed Vegetables Pack  ',
                      ),
                      TextSpan(
                        text: '(10% Off)',
                        style: TextStyle(color: Color(0xFF4CA300)),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                "Fruit mix fresh pack",
                style: TextStyle(
                  fontFamily: "poppins",
                ),
              ),
              Container(
                  height: 230,
                  child: ListView.builder(
                      itemCount: listMixedVegetablesPack.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                        right: 15, top: 10, bottom: 10),
                                    height: 143,
                                    width: 118,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: FittedBox(
                                        fit: BoxFit.cover,
                                        child: Image.asset(
                                            listMixedVegetablesPack[index]
                                                .getImageSrc),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      right: 25,
                                      top: 15,
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            listMixedVegetablesPack[index]
                                                    .setFavoutite =
                                                !listMixedVegetablesPack[index]
                                                    .getFavoutite;
                                          });
                                        },
                                        child: Image.asset(
                                            listMixedVegetablesPack[index]
                                                    .getFavoutite
                                                ? "assets/icons/favourite.png"
                                                : "assets/icons/unfavourite.png"),
                                      )),
                                ],
                              ),
                              SizedBox(
                                width: 90,
                                child: FittedBox(
                                  fit: BoxFit.fitWidth,
                                  child: RatingBar.builder(
                                    initialRating:
                                        listMixedVegetablesPack[index]
                                            .getRatingQuantity,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemPadding: EdgeInsets.only(right: 2),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                      setState(() {
                                        rating ==
                                                listMixedVegetablesPack[index]
                                                    .getRatingQuantity
                                            ? listMixedVegetablesPack[index]
                                                .setRatingQuantity = 0
                                            : listMixedVegetablesPack[index]
                                                .setRatingQuantity = rating;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "poppins",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                  children: [
                                    TextSpan(
                                      text:
                                          '${listMixedVegetablesPack[index].getName.toString()}\n',
                                    ),
                                    WidgetSpan(
                                      child: Icon(
                                        Icons.currency_rupee_rounded,
                                        size: 19,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          '${listMixedVegetablesPack[index].getPrice.toString()} Per/ kg',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: "poppins",
                                          color: Color(0xFF707070)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ))),
              // List Allium Vegetables (20% Off)
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "poppins",
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                    children: const <TextSpan>[
                      TextSpan(
                        text: 'Allium Vegetables  ',
                      ),
                      TextSpan(
                        text: '(20% Off)',
                        style: TextStyle(color: Color(0xFF4CA300)),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                "Fresh Stone Vegetables",
                style: TextStyle(
                  fontFamily: "poppins",
                ),
              ),
              Container(
                  height: 230,
                  child: ListView.builder(
                      itemCount: listAlliumVegetable.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                        right: 15, top: 10, bottom: 10),
                                    height: 143,
                                    width: 118,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: FittedBox(
                                        fit: BoxFit.cover,
                                        child: Image.asset(
                                            listAlliumVegetable[index]
                                                .getImageSrc),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      right: 25,
                                      top: 15,
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            listAlliumVegetable[index]
                                                    .setFavoutite =
                                                !listAlliumVegetable[index]
                                                    .getFavoutite;
                                          });
                                        },
                                        child: Image.asset(listAlliumVegetable[
                                                    index]
                                                .getFavoutite
                                            ? "assets/icons/favourite.png"
                                            : "assets/icons/unfavourite.png"),
                                      )),
                                ],
                              ),
                              SizedBox(
                                width: 90,
                                child: FittedBox(
                                  fit: BoxFit.fitWidth,
                                  child: RatingBar.builder(
                                    initialRating: listAlliumVegetable[index]
                                        .getRatingQuantity,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemPadding: EdgeInsets.only(right: 2),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                      setState(() {
                                        rating ==
                                                listAlliumVegetable[index]
                                                    .getRatingQuantity
                                            ? listAlliumVegetable[index]
                                                .setRatingQuantity = 0
                                            : listAlliumVegetable[index]
                                                .setRatingQuantity = rating;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "poppins",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                  children: [
                                    TextSpan(
                                      text:
                                          '${listAlliumVegetable[index].getName}\n',
                                    ),
                                    WidgetSpan(
                                      child: Icon(
                                        Icons.currency_rupee_rounded,
                                        size: 19,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          '${listAlliumVegetable[index].getPrice} Per/ kg',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: "poppins",
                                          color: Color(0xFF707070)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ))),
              // List Root Vegetabels (5% Off)
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "poppins",
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                    children: const <TextSpan>[
                      TextSpan(
                        text: 'Root Vegetabels ',
                      ),
                      TextSpan(
                        text: '(5% Off)',
                        style: TextStyle(color: Color(0xFF4CA300)),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                "Fresh Melons Vegetables",
                style: TextStyle(
                  fontFamily: "poppins",
                ),
              ),
              Container(
                  height: 230,
                  child: ListView.builder(
                      itemCount: listRootVegetable.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                        right: 15, top: 10, bottom: 10),
                                    height: 143,
                                    width: 118,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: FittedBox(
                                        fit: BoxFit.fitHeight,
                                        child: Image.asset(
                                            listRootVegetable[index]
                                                .getImageSrc),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                      right: 25,
                                      top: 15,
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            listRootVegetable[index]
                                                    .setFavoutite =
                                                !listRootVegetable[index]
                                                    .getFavoutite;
                                          });
                                        },
                                        child: Image.asset(listRootVegetable[
                                                    index]
                                                .getFavoutite
                                            ? "assets/icons/favourite.png"
                                            : "assets/icons/unfavourite.png"),
                                      )),
                                ],
                              ),
                              SizedBox(
                                width: 90,
                                child: FittedBox(
                                  fit: BoxFit.cover,
                                  child: RatingBar.builder(
                                    initialRating: listRootVegetable[index]
                                        .getRatingQuantity,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemPadding: EdgeInsets.only(right: 2),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                      setState(() {
                                        rating ==
                                                listRootVegetable[index]
                                                    .getRatingQuantity
                                            ? listRootVegetable[index]
                                                .setRatingQuantity = 0
                                            : listRootVegetable[index]
                                                .setRatingQuantity = rating;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "poppins",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                  children: [
                                    TextSpan(
                                      text:
                                          '${listRootVegetable[index].getName}\n',
                                    ),
                                    WidgetSpan(
                                      child: Icon(
                                        Icons.currency_rupee_rounded,
                                        size: 19,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '300 Per/ kg',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontFamily: "poppins",
                                          color: Color(0xFF707070)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ))),
            ],
          ),
        ),
      ),
    );
  }
}
