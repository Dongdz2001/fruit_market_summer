import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
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
        preferredSize: Size.fromHeight(30.0),
        child: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFF69A03A),
          title: Transform(
            // you can forcefully translate values left side using Transform
            transform: Matrix4.translationValues(5.0, -5.0, 0.0),
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
                                child: Image.asset(manish_chutake
                                    .getItemFavourite(index)
                                    .getImageSrc),
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
                                    Container(
                                        child: Text(
                                      'Pick up from organic farms',
                                      style: TextStyle(
                                          fontFamily: "poppins",
                                          fontSize: 12,
                                          color: Colors.grey),
                                    )),
                                    SizedBox(height: 4),
                                    SizedBox(
                                      width: 90,
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
                                    SizedBox(height: 10),
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
                                            width: 30,
                                            height: 30,
                                            padding:
                                                EdgeInsets.only(bottom: 10),
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey, width: 2),
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
                                            width: 30,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey, width: 2),
                                              borderRadius:
                                                  BorderRadius.circular(7),
                                            ),
                                            child:
                                                Center(child: const Text('+')),
                                          ),
                                        ),
                                        SizedBox(width: 40),
                                        SizedBox(
                                          height: 30,
                                          child: ElevatedButton(
                                              onPressed: () {},
                                              style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty.all<
                                                              Color>(
                                                          Color(0xFFCC7D00))),
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
                  )),
        ),
      ])),
    );
  }
}
