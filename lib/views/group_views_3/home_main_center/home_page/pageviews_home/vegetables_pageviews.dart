import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:page_views/controller/gobal_variable_food/sizeDevice.dart';
import 'package:page_views/controller/input_data/init_user.dart';
import 'package:page_views/controller/input_data/init_vegetable.dart';
import 'package:page_views/model/food_class/food.dart';
import 'package:page_views/views/group_views_3/details_product/detail_product.dart';

class VegetablesPageviews extends StatefulWidget {
  const VegetablesPageviews({Key? key}) : super(key: key);

  @override
  _VegetablesPageviewsState createState() => _VegetablesPageviewsState();
}

class _VegetablesPageviewsState extends State<VegetablesPageviews> {
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
                  height: heightDevice(0.288),
                  child: ListView.builder(
                      itemCount: listOrganicVegetable.length,
                      scrollDirection: Axis.horizontal,
                      addAutomaticKeepAlives: true,
                      itemBuilder: (context, index) => GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailProduct(
                                          tempFood: listOrganicVegetable[index],
                                        ))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          right: 15, top: 10, bottom: 10),
                                      height: heightDevice(0.18),
                                      width: witdthDevice(0.29),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: FittedBox(
                                          fit: BoxFit.cover,
                                          child: Image.asset(
                                              listOrganicVegetable[index]
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
                                              listOrganicVegetable[index]
                                                      .setFavoutite =
                                                  !listOrganicVegetable[index]
                                                      .getFavoutite;
                                              if (listOrganicVegetable[index]
                                                  .getFavoutite) {
                                                manish_chutake.addItemFavourite(
                                                    listOrganicVegetable[
                                                        index]);
                                              } else {
                                                for (var i = 0;
                                                    i <
                                                        manish_chutake
                                                            .getLengthFavourite();
                                                    i++) {
                                                  if (manish_chutake
                                                          .getItemFavourite(i)
                                                          .getName ==
                                                      listOrganicVegetable[
                                                              index]
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
                                          child: Image.asset(
                                            listOrganicVegetable[index]
                                                    .getFavoutite
                                                ? "assets/icons/favourite.png"
                                                : "assets/icons/unfavourite.png",
                                          ),
                                        )),
                                  ],
                                ),
                                SizedBox(
                                  width: witdthDevice(0.22),
                                  child: FittedBox(
                                    fit: BoxFit.fitWidth,
                                    child: RatingBar.builder(
                                      initialRating: listOrganicVegetable[index]
                                          .getRateGeneral,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: false,
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
                                        //           listOrganicVegetable[index]
                                        //               .getRateGeneral
                                        //       ? listOrganicVegetable[index]
                                        //           .setRatingQuantity = 0
                                        //       : listOrganicVegetable[index]
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
                            ),
                          ))),
              SizedBox(
                height: heightDevice(0.01),
              ),
              // List Mixed Vegetables Pack (10% Off)
              RichText(
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
              Text(
                "Vegetable mix fresh pack",
                style: TextStyle(
                  fontFamily: "poppins",
                ),
              ),
              Container(
                  height: heightDevice(0.288),
                  child: ListView.builder(
                      itemCount: listMixedVegetablesPack.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailProduct(
                                          tempFood:
                                              listMixedVegetablesPack[index],
                                        ))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          right: 15, top: 10, bottom: 10),
                                      height: heightDevice(0.18),
                                      width: witdthDevice(0.29),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: FittedBox(
                                          fit: BoxFit.cover,
                                          child: Image.asset(
                                              listMixedVegetablesPack[index]
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
                                              listMixedVegetablesPack[index]
                                                      .setFavoutite =
                                                  !listMixedVegetablesPack[
                                                          index]
                                                      .getFavoutite;
                                              if (listMixedVegetablesPack[index]
                                                  .getFavoutite) {
                                                manish_chutake.addItemFavourite(
                                                    listMixedVegetablesPack[
                                                        index]);
                                              } else {
                                                for (var i = 0;
                                                    i <
                                                        manish_chutake
                                                            .getLengthFavourite();
                                                    i++) {
                                                  if (manish_chutake
                                                          .getItemFavourite(i)
                                                          .getName ==
                                                      listMixedVegetablesPack[
                                                              index]
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
                                          child: Image.asset(
                                              listMixedVegetablesPack[index]
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
                                      initialRating:
                                          listMixedVegetablesPack[index]
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
                                        print(rating);
                                        // setState(() {
                                        //   rating ==
                                        //           listMixedVegetablesPack[index]
                                        //               .getRateGeneral
                                        //       ? listMixedVegetablesPack[index]
                                        //           .setRatingQuantity = 0
                                        //       : listMixedVegetablesPack[index]
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
                            ),
                          ))),
              SizedBox(
                height: heightDevice(0.01),
              ),
              // List Allium Vegetables (20% Off)
              RichText(
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
              Text(
                "Fresh Allium Vegetables",
                style: TextStyle(
                  fontFamily: "poppins",
                ),
              ),
              Container(
                  height: heightDevice(0.288),
                  child: ListView.builder(
                      itemCount: listAlliumVegetable.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailProduct(
                                          tempFood: listAlliumVegetable[index],
                                        ))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          right: 15, top: 10, bottom: 10),
                                      height: heightDevice(0.18),
                                      width: witdthDevice(0.29),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: FittedBox(
                                          fit: BoxFit.cover,
                                          child: Image.asset(
                                              listAlliumVegetable[index]
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
                                              listAlliumVegetable[index]
                                                      .setFavoutite =
                                                  !listAlliumVegetable[index]
                                                      .getFavoutite;
                                              if (listAlliumVegetable[index]
                                                  .getFavoutite) {
                                                manish_chutake.addItemFavourite(
                                                    listAlliumVegetable[index]);
                                              } else {
                                                for (var i = 0;
                                                    i <
                                                        manish_chutake
                                                            .getLengthFavourite();
                                                    i++) {
                                                  if (manish_chutake
                                                          .getItemFavourite(i)
                                                          .getName ==
                                                      listAlliumVegetable[index]
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
                                          child: Image.asset(listAlliumVegetable[
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
                                      initialRating: listAlliumVegetable[index]
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
                                        print(rating);
                                        // setState(() {
                                        //   rating ==
                                        //           listAlliumVegetable[index]
                                        //               .getRateGeneral
                                        //       ? listAlliumVegetable[index]
                                        //           .setRatingQuantity = 0
                                        //       : listAlliumVegetable[index]
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
                      text: 'Root Vegetabels ',
                    ),
                    TextSpan(
                      text: '(5% Off)',
                      style: TextStyle(color: Color(0xFF4CA300)),
                    ),
                  ],
                ),
              ),
              Text(
                "Fresh Root Vegetables",
                style: TextStyle(
                  fontFamily: "poppins",
                ),
              ),
              Container(
                  height: heightDevice(0.288),
                  child: ListView.builder(
                      itemCount: listRootVegetable.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailProduct(
                                          tempFood: listRootVegetable[index],
                                        ))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          right: 15, top: 10, bottom: 10),
                                      height: heightDevice(0.18),
                                      width: witdthDevice(0.29),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: FittedBox(
                                          fit: BoxFit.fitHeight,
                                          child: Image.asset(
                                              listRootVegetable[index]
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
                                              listRootVegetable[index]
                                                      .setFavoutite =
                                                  !listRootVegetable[index]
                                                      .getFavoutite;
                                              if (listRootVegetable[index]
                                                  .getFavoutite) {
                                                manish_chutake.addItemFavourite(
                                                    listRootVegetable[index]);
                                              } else {
                                                for (var i = 0;
                                                    i <
                                                        manish_chutake
                                                            .getLengthFavourite();
                                                    i++) {
                                                  if (manish_chutake
                                                          .getItemFavourite(i)
                                                          .getName ==
                                                      listRootVegetable[index]
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
                                          child: Image.asset(listRootVegetable[
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
                                    fit: BoxFit.cover,
                                    child: RatingBar.builder(
                                      initialRating: listRootVegetable[index]
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
                                        print(rating);
                                        // setState(() {
                                        //   rating ==
                                        //           listRootVegetable[index]
                                        //               .getRateGeneral
                                        //       ? listRootVegetable[index]
                                        //           .setRatingQuantity = 0
                                        //       : listRootVegetable[index]
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
                                            '${listRootVegetable[index].getName}\n',
                                      ),
                                      WidgetSpan(
                                        child: Icon(
                                          Icons.currency_rupee_rounded,
                                          size: 19,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                            '${listRootVegetable[index].getPrice} Per/ kg',
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
