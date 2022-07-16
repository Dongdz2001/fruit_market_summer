import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fruit_market_summer/controller/gobal_variable_food/sizeDevice.dart';
import 'package:fruit_market_summer/controller/input_data/init_user.dart';

import '../../../../controller/input_data/init_vegetable.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  _FavouriteScreenState createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(heightDevice(0.04)),
        child: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFF69A03A),
          title: Transform(
            // you can forcefully translate values left side using Transform
            transform: Matrix4.translationValues(0, -heightDevice(0.01), 0.0),
            child: Text(
              "Favourites",
              style: TextStyle(
                fontFamily: "poppins",
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
      body: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Expanded(
          child: ListView.builder(
              itemCount: manish_chutake.getLengthFavourite(),
              scrollDirection: Axis.vertical,
              addAutomaticKeepAlives: true,
              itemBuilder: (context, index) => Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 5),
                        color: Colors.white,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                  right: 15, top: 10, bottom: 2),
                              height: heightDevice(0.14),
                              width: witdthDevice(0.28),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: FittedBox(
                                  fit: BoxFit.cover,
                                  child: Image.asset(manish_chutake
                                      .getItemFavourite(index)
                                      .getImageSrc),
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(height: heightDevice(0.012)),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.582,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            manish_chutake
                                                .getItemFavourite(index)
                                                .getName,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontFamily: "poppins",
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            "${manish_chutake.getItemFavourite(index).getPrice} Per/ kg",
                                            textAlign: TextAlign.left,
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline2,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: heightDevice(0.001),
                                      ),
                                      Container(
                                          child: Text(
                                        'Pick up from organic farms',
                                        style: TextStyle(
                                            fontFamily: "poppins",
                                            fontSize: 12,
                                            color: Colors.grey),
                                      )),
                                      SizedBox(height: heightDevice(0.01)),
                                      SizedBox(
                                        width: witdthDevice(0.22),
                                        child: FittedBox(
                                          fit: BoxFit.fitWidth,
                                          child: RatingBar.builder(
                                            initialRating: manish_chutake
                                                .getItemFavourite(index)
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
                                                        manish_chutake
                                                            .getItemFavourite(
                                                                index)
                                                            .getRatingQuantity
                                                    ? manish_chutake
                                                        .getItemFavourite(index)
                                                        .setRatingQuantity = 0
                                                    : manish_chutake
                                                        .getItemFavourite(index)
                                                        .setRatingQuantity = rating;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: heightDevice(0.022)),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          // button down amount
                                          InkWell(
                                            onTap: () => setState(
                                              () => manish_chutake
                                                  .getItemFavourite(index)
                                                  .downAmount(),
                                            ),
                                            child: Container(
                                              width: witdthDevice(0.075),
                                              height: heightDevice(0.038),
                                              padding:
                                                  EdgeInsets.only(bottom: 10),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.grey,
                                                    width: 2),
                                                borderRadius:
                                                    BorderRadius.circular(7),
                                              ),
                                              child: Center(
                                                  child: const Text(
                                                '__',
                                                style: TextStyle(
                                                    color: Colors.black),
                                              )),
                                            ),
                                          ),
                                          Text(manish_chutake
                                              .getItemFavourite(index)
                                              .getAmount
                                              .toString()),
                                          // button up amount
                                          InkWell(
                                            onTap: () => setState(
                                              () => manish_chutake
                                                  .getItemFavourite(index)
                                                  .upAmount(),
                                            ),
                                            child: Container(
                                              width: witdthDevice(0.075),
                                              height: heightDevice(0.038),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.grey,
                                                    width: 2),
                                                borderRadius:
                                                    BorderRadius.circular(7),
                                              ),
                                              child: Center(
                                                  child: const Text('+')),
                                            ),
                                          ),
                                          SizedBox(width: witdthDevice(0.1)),
                                          SizedBox(
                                            height: heightDevice(0.038),
                                            child: ElevatedButton(
                                                onPressed: () {
                                                  if (manish_chutake
                                                          .getItemFavourite(
                                                              index)
                                                          .getAmount !=
                                                      0) {
                                                    setState(() => manish_chutake
                                                        .addItemListOrder(
                                                            manish_chutake
                                                                .getItemFavourite(
                                                                    index)));
                                                  }
                                                },
                                                style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all<Color>(Color(
                                                                0xFFCC7D00))),
                                                child: const Text('Add')),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: heightDevice(0.002)),
                      Container(
                        height: heightDevice(0.0012),
                        color: Colors.grey[350],
                      )
                    ],
                  )),
        ),
      ])),
    );
  }
}
