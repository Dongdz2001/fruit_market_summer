import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fruit_market_summer/controller/input_data/init_dry_fruits.dart';

import '../../../details_product/detail_product.dart';

class DryFruitsPageviews extends StatefulWidget {
  const DryFruitsPageviews({Key? key}) : super(key: key);

  @override
  _DryFruitsPageviewsState createState() => _DryFruitsPageviewsState();
}

class _DryFruitsPageviewsState extends State<DryFruitsPageviews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // List Indehiscent Dry Fruits
              RichText(
                text: TextSpan(
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "poppins",
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'Indehiscent Dry Fruits  ',
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
                      itemCount: list_Indehiscent_Dry_Fruit.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailProduct(
                                          tempFood:
                                              list_Indehiscent_Dry_Fruit[index],
                                        ))),
                            child: Column(
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
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: FittedBox(
                                          fit: BoxFit.fitHeight,
                                          child: Image.asset(
                                              list_Indehiscent_Dry_Fruit[index]
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
                                              list_Indehiscent_Dry_Fruit[index]
                                                      .setFavoutite =
                                                  !list_Indehiscent_Dry_Fruit[
                                                          index]
                                                      .getFavoutite;
                                            });
                                          },
                                          child: Image.asset(
                                              list_Indehiscent_Dry_Fruit[index]
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
                                          list_Indehiscent_Dry_Fruit[index]
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
                                                  list_Indehiscent_Dry_Fruit[
                                                          index]
                                                      .getRatingQuantity
                                              ? list_Indehiscent_Dry_Fruit[
                                                      index]
                                                  .setRatingQuantity = 0
                                              : list_Indehiscent_Dry_Fruit[
                                                      index]
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
                                            '${list_Indehiscent_Dry_Fruit[index].getName.toString()}\n',
                                      ),
                                      WidgetSpan(
                                        child: Icon(
                                          Icons.currency_rupee_rounded,
                                          size: 19,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            '${list_Indehiscent_Dry_Fruit[index].getPrice.toString()} Per/ kg',
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: "poppins",
                                            color: Color(0xFF707070)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ))),
              // List Mixed Dry Fruits Pack (10% Off)
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
                        text: 'Mixed Dry Fruits Pack  ',
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
                "Dry Fruit mix fresh pack",
                style: TextStyle(
                  fontFamily: "poppins",
                ),
              ),
              Container(
                  height: 230,
                  child: ListView.builder(
                      itemCount: list_MixedDry_FruitsPack.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailProduct(
                                          tempFood:
                                              list_MixedDry_FruitsPack[index],
                                        ))),
                            child: Column(
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
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: FittedBox(
                                          fit: BoxFit.cover,
                                          child: Image.asset(
                                              list_MixedDry_FruitsPack[index]
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
                                              list_MixedDry_FruitsPack[index]
                                                      .setFavoutite =
                                                  !list_MixedDry_FruitsPack[
                                                          index]
                                                      .getFavoutite;
                                            });
                                          },
                                          child: Image.asset(
                                              list_MixedDry_FruitsPack[index]
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
                                          list_MixedDry_FruitsPack[index]
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
                                                  list_MixedDry_FruitsPack[
                                                          index]
                                                      .getRatingQuantity
                                              ? list_MixedDry_FruitsPack[index]
                                                  .setRatingQuantity = 0
                                              : list_MixedDry_FruitsPack[index]
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
                                            '${list_MixedDry_FruitsPack[index].getName.toString()}\n',
                                      ),
                                      WidgetSpan(
                                        child: Icon(
                                          Icons.currency_rupee_rounded,
                                          size: 19,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            '${list_MixedDry_FruitsPack[index].getPrice.toString()} Per/ kg',
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: "poppins",
                                            color: Color(0xFF707070)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ))),
              // List Dehiscent Dry Fruits (15% Off)
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
                        text: 'Dehiscent Dry Fruits  ',
                      ),
                      TextSpan(
                        text: '(15% Off)',
                        style: TextStyle(color: Color(0xFF4CA300)),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                "Fresh Dehiscent Dry Fruits",
                style: TextStyle(
                  fontFamily: "poppins",
                ),
              ),
              Container(
                  height: 230,
                  child: ListView.builder(
                      itemCount: list_Dehiscent_Dry_Fruit.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailProduct(
                                          tempFood:
                                              list_Dehiscent_Dry_Fruit[index],
                                        ))),
                            child: Column(
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
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: FittedBox(
                                          fit: BoxFit.cover,
                                          child: Image.asset(
                                              list_Dehiscent_Dry_Fruit[index]
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
                                              list_Dehiscent_Dry_Fruit[index]
                                                      .setFavoutite =
                                                  !list_Dehiscent_Dry_Fruit[
                                                          index]
                                                      .getFavoutite;
                                            });
                                          },
                                          child: Image.asset(
                                              list_Dehiscent_Dry_Fruit[index]
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
                                          list_Dehiscent_Dry_Fruit[index]
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
                                                  list_Dehiscent_Dry_Fruit[
                                                          index]
                                                      .getRatingQuantity
                                              ? list_Dehiscent_Dry_Fruit[index]
                                                  .setRatingQuantity = 0
                                              : list_Dehiscent_Dry_Fruit[index]
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
                                            '${list_Dehiscent_Dry_Fruit[index].getName}\n',
                                      ),
                                      WidgetSpan(
                                        child: Icon(
                                          Icons.currency_rupee_rounded,
                                          size: 19,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            '${list_Dehiscent_Dry_Fruit[index].getPrice} Per/ kg',
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: "poppins",
                                            color: Color(0xFF707070)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ))),
              // List Kashmiri Dry Fruits (5% Off)
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
                        text: 'Kashmiri Dry Fruits  ',
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
                "Fresh Kashmiri Dry Fruits",
                style: TextStyle(
                  fontFamily: "poppins",
                ),
              ),
              Container(
                  height: 230,
                  child: ListView.builder(
                      itemCount: list_Kashmiri_Dry_Fruit.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailProduct(
                                          tempFood:
                                              list_Kashmiri_Dry_Fruit[index],
                                        ))),
                            child: Column(
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
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: FittedBox(
                                          fit: BoxFit.fitHeight,
                                          child: Image.asset(
                                              list_Kashmiri_Dry_Fruit[index]
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
                                              list_Kashmiri_Dry_Fruit[index]
                                                      .setFavoutite =
                                                  !list_Kashmiri_Dry_Fruit[
                                                          index]
                                                      .getFavoutite;
                                            });
                                          },
                                          child: Image.asset(
                                              list_Kashmiri_Dry_Fruit[index]
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
                                      initialRating:
                                          list_Kashmiri_Dry_Fruit[index]
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
                                                  list_Kashmiri_Dry_Fruit[index]
                                                      .getRatingQuantity
                                              ? list_Kashmiri_Dry_Fruit[index]
                                                  .setRatingQuantity = 0
                                              : list_Kashmiri_Dry_Fruit[index]
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
                                            '${list_Kashmiri_Dry_Fruit[index].getName}\n',
                                      ),
                                      WidgetSpan(
                                        child: Icon(
                                          Icons.currency_rupee_rounded,
                                          size: 19,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            '${list_Kashmiri_Dry_Fruit[index].getPrice} Per/ kg',
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: "poppins",
                                            color: Color(0xFF707070)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ))),
            ],
          ),
        ),
      ),
    );
  }
}
