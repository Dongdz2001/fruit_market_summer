import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:fruit_market_summer/controller/input_data/init_fruits.dart';

import '../../../../../controller/gobal_variable_food/sizeDevice.dart';
import '../../../../../controller/input_data/init_user.dart';
import '../../../details_product/detail_product.dart';

class FruitsPageviews extends StatefulWidget {
  const FruitsPageviews({Key? key}) : super(key: key);

  @override
  _FruitsPageviewsState createState() => _FruitsPageviewsState();
}

class _FruitsPageviewsState extends State<FruitsPageviews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // List Organic Fruits
              RichText(
                text: TextSpan(
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "poppins",
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'Organic Fruits  ',
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
                  height: heightDevice(0.31),
                  child: ListView.builder(
                      itemCount: listOrganicFruits.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailProduct(
                                          tempFood: listOrganicFruits[index],
                                        ))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          right: 15, top: 10, bottom: 10),
                                      height: heightDevice(0.2),
                                      width: witdthDevice(0.3),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: FittedBox(
                                          fit: BoxFit.cover,
                                          child: Image.asset(
                                              listOrganicFruits[index]
                                                  .getImageSrc),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        height: heightDevice(0.08),
                                        width: witdthDevice(0.485),
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              listOrganicFruits[index]
                                                      .setFavoutite =
                                                  !listOrganicFruits[index]
                                                      .getFavoutite;
                                              if (listOrganicFruits[index]
                                                  .getFavoutite) {
                                                manish_chutake.addItemFavourite(
                                                    listOrganicFruits[index]);
                                              } else {
                                                for (var i = 0;
                                                    i <
                                                        manish_chutake
                                                            .getLengthFavourite();
                                                    i++) {
                                                  if (manish_chutake
                                                          .getItemFavourite(i)
                                                          .getName ==
                                                      listOrganicFruits[index]
                                                          .getName) {
                                                    manish_chutake
                                                        .removeItemListFavourite(
                                                            i);
                                                    break;
                                                  }
                                                }
                                              }
                                            });
                                          },
                                          child: Image.asset(listOrganicFruits[
                                                      index]
                                                  .getFavoutite
                                              ? "assets/icons/favourite.png"
                                              : "assets/icons/unfavourite.png"),
                                        )),
                                  ],
                                ),
                                SizedBox(
                                  width: witdthDevice(0.22),
                                  child: FittedBox(
                                    fit: BoxFit.fitWidth,
                                    child: RatingBar.builder(
                                      initialRating: listOrganicFruits[index]
                                          .getRateGeneral,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      ignoreGestures: true,
                                      itemCount: 5,
                                      itemPadding: EdgeInsets.only(right: 2),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        // setState(() {
                                        //   rating ==
                                        //           listOrganicFruits[index]
                                        //               .getRateGeneral
                                        //       ? listOrganicFruits[index]
                                        //           .setRatingQuantity = 0
                                        //       : listOrganicFruits[index]
                                        //           .setRatingQuantity = rating;
                                        // });
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
                                            '${listOrganicFruits[index].getName.toString()}\n',
                                      ),
                                      WidgetSpan(
                                        child: Icon(
                                          Icons.currency_rupee_rounded,
                                          size: 19,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            '${listOrganicFruits[index].getPrice.toString()} Per/ kg',
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
              SizedBox(
                height: heightDevice(0.01),
              ),
              // List Mixed Fruits Pack (10% Off)
              RichText(
                text: TextSpan(
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "poppins",
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'Mixed Fruits Pack  ',
                    ),
                    TextSpan(
                      text: '(10% Off)',
                      style: TextStyle(color: Color(0xFF4CA300)),
                    ),
                  ],
                ),
              ),
              Text(
                "Fruit mix fresh pack",
                style: TextStyle(
                  fontFamily: "poppins",
                ),
              ),
              Container(
                  height: heightDevice(0.31),
                  child: ListView.builder(
                      itemCount: listMixedFruitsPack.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailProduct(
                                          tempFood: listMixedFruitsPack[index],
                                        ))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          right: 15, top: 10, bottom: 10),
                                      height: heightDevice(0.2),
                                      width: witdthDevice(0.3),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: FittedBox(
                                          fit: BoxFit.cover,
                                          child: Image.asset(
                                              listMixedFruitsPack[index]
                                                  .getImageSrc),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        height: heightDevice(0.08),
                                        width: witdthDevice(0.485),
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              listMixedFruitsPack[index]
                                                      .setFavoutite =
                                                  !listMixedFruitsPack[index]
                                                      .getFavoutite;
                                              if (listMixedFruitsPack[index]
                                                  .getFavoutite) {
                                                manish_chutake.addItemFavourite(
                                                    listMixedFruitsPack[index]);
                                              } else {
                                                for (var i = 0;
                                                    i <
                                                        manish_chutake
                                                            .getLengthFavourite();
                                                    i++) {
                                                  if (manish_chutake
                                                          .getItemFavourite(i)
                                                          .getName ==
                                                      listMixedFruitsPack[index]
                                                          .getName) {
                                                    manish_chutake
                                                        .removeItemListFavourite(
                                                            i);
                                                    break;
                                                  }
                                                }
                                              }
                                            });
                                          },
                                          child: Image.asset(listMixedFruitsPack[
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
                                      initialRating: listMixedFruitsPack[index]
                                          .getRateGeneral,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      ignoreGestures: true,
                                      itemCount: 5,
                                      itemPadding: EdgeInsets.only(right: 2),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        // print(rating);
                                        // setState(() {
                                        //   rating ==
                                        //           listMixedFruitsPack[index]
                                        //               .getRateGeneral
                                        //       ? listMixedFruitsPack[index]
                                        //           .setRatingQuantity = 0
                                        //       : listMixedFruitsPack[index]
                                        //           .setRatingQuantity = rating;
                                        // });
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
                                            '${listMixedFruitsPack[index].getName.toString()}\n',
                                      ),
                                      WidgetSpan(
                                        child: Icon(
                                          Icons.currency_rupee_rounded,
                                          size: 19,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            '${listMixedFruitsPack[index].getPrice.toString()} Per/ kg',
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
              SizedBox(
                height: heightDevice(0.01),
              ),
              // List Allium Fruits (20% Off)
              RichText(
                text: TextSpan(
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "poppins",
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'Allium Fruits  ',
                    ),
                    TextSpan(
                      text: '(20% Off)',
                      style: TextStyle(color: Color(0xFF4CA300)),
                    ),
                  ],
                ),
              ),
              Text(
                "Fresh Stone Fruits",
                style: TextStyle(
                  fontFamily: "poppins",
                ),
              ),
              Container(
                  height: heightDevice(0.31),
                  child: ListView.builder(
                      itemCount: listStoneFruits.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailProduct(
                                          tempFood: listStoneFruits[index],
                                        ))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          right: 15, top: 10, bottom: 10),
                                      height: heightDevice(0.2),
                                      width: witdthDevice(0.3),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: FittedBox(
                                          fit: BoxFit.cover,
                                          child: Image.asset(
                                              listStoneFruits[index]
                                                  .getImageSrc),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        height: heightDevice(0.08),
                                        width: witdthDevice(0.485),
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              listStoneFruits[index]
                                                      .setFavoutite =
                                                  !listStoneFruits[index]
                                                      .getFavoutite;
                                              if (listStoneFruits[index]
                                                  .getFavoutite) {
                                                manish_chutake.addItemFavourite(
                                                    listStoneFruits[index]);
                                              } else {
                                                for (var i = 0;
                                                    i <
                                                        manish_chutake
                                                            .getLengthFavourite();
                                                    i++) {
                                                  if (manish_chutake
                                                          .getItemFavourite(i)
                                                          .getName ==
                                                      listStoneFruits[index]
                                                          .getName) {
                                                    manish_chutake
                                                        .removeItemListFavourite(
                                                            i);
                                                    break;
                                                  }
                                                }
                                              }
                                            });
                                          },
                                          child: Image.asset(listStoneFruits[
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
                                      initialRating:
                                          listStoneFruits[index].getRateGeneral,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      ignoreGestures: true,
                                      itemCount: 5,
                                      itemPadding: EdgeInsets.only(right: 2),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        // print(rating);
                                        // setState(() {
                                        //   rating ==
                                        //           listStoneFruits[index]
                                        //               .getRateGeneral
                                        //       ? listStoneFruits[index]
                                        //           .setRatingQuantity = 0
                                        //       : listStoneFruits[index]
                                        //           .setRatingQuantity = rating;
                                        // });
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
                                            '${listStoneFruits[index].getName}\n',
                                      ),
                                      WidgetSpan(
                                        child: Icon(
                                          Icons.currency_rupee_rounded,
                                          size: 19,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            '${listStoneFruits[index].getPrice} Per/ kg',
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
              SizedBox(
                height: heightDevice(0.01),
              ),
              // List Root Vegetabels (5% Off)
              RichText(
                text: TextSpan(
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "poppins",
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'Melons ',
                    ),
                    TextSpan(
                      text: '(5% Off)',
                      style: TextStyle(color: Color(0xFF4CA300)),
                    ),
                  ],
                ),
              ),
              Text(
                "Fresh Melons Fruits",
                style: TextStyle(
                  fontFamily: "poppins",
                ),
              ),
              Container(
                  height: heightDevice(0.31),
                  child: ListView.builder(
                      itemCount: listMelons.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailProduct(
                                          tempFood: listMelons[index],
                                        ))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          right: 15, top: 10, bottom: 10),
                                      height: heightDevice(0.2),
                                      width: witdthDevice(0.3),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: FittedBox(
                                          fit: BoxFit.cover,
                                          child: Image.asset(
                                              listMelons[index].getImageSrc),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                        height: heightDevice(0.08),
                                        width: witdthDevice(0.485),
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              listMelons[index].setFavoutite =
                                                  !listMelons[index]
                                                      .getFavoutite;
                                              if (listMelons[index]
                                                  .getFavoutite) {
                                                manish_chutake.addItemFavourite(
                                                    listMelons[index]);
                                              } else {
                                                for (var i = 0;
                                                    i <
                                                        manish_chutake
                                                            .getLengthFavourite();
                                                    i++) {
                                                  if (manish_chutake
                                                          .getItemFavourite(i)
                                                          .getName ==
                                                      listMelons[index]
                                                          .getName) {
                                                    manish_chutake
                                                        .removeItemListFavourite(
                                                            i);
                                                    break;
                                                  }
                                                }
                                              }
                                            });
                                          },
                                          child: Image.asset(listMelons[index]
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
                                          listMelons[index].getRateGeneral,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      ignoreGestures: true,
                                      itemCount: 5,
                                      itemPadding: EdgeInsets.only(right: 2),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        // print(rating);
                                        // setState(() {
                                        //   rating ==
                                        //           listMelons[index]
                                        //               .getRateGeneral
                                        //       ? listMelons[index]
                                        //           .setRatingQuantity = 0
                                        //       : listMelons[index]
                                        //           .setRatingQuantity = rating;
                                        // });
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
                                        text: '${listMelons[index].getName}\n',
                                      ),
                                      WidgetSpan(
                                        child: Icon(
                                          Icons.currency_rupee_rounded,
                                          size: 19,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            '${listMelons[index].getPrice} Per/ kg',
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
