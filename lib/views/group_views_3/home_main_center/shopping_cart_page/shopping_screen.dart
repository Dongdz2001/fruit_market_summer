import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:fruit_market_summer/controller/gobal_variable_food/sizeDevice.dart';
import 'package:fruit_market_summer/model/food_class/food.dart';
import '../../../../controller/input_data/init_user.dart';
import 'dart:math';

class ShoppingScreen extends StatefulWidget {
  const ShoppingScreen({Key? key}) : super(key: key);

  @override
  _ShoppingScreenState createState() => _ShoppingScreenState();
}

class _ShoppingScreenState extends State<ShoppingScreen> {
  String dropdownValue = '440001 Nagpur ,Maharashtra';
  static int upPrice = 1 + Random().nextInt(10) + Random().nextInt(20);
  List<Food> listVeget =
      manish_chutake.getListFoodOrderFollowType("Vegetables");
  List<Food> listFruit = manish_chutake.getListFoodOrderFollowType("Fruits");
  List<Food> listDryFruit =
      manish_chutake.getListFoodOrderFollowType("Dry Fruits");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: PreferredSize(
          preferredSize:
              Size.fromHeight(heightDevice(0.2)), // here the desired height
          child: AppBar(
            elevation: 0,
            backgroundColor: Color(0xFF69A03A),
            title: Transform(
              // you can forcefully translate values left side using Transform
              transform: Matrix4.translationValues(
                  -witdthDevice(0.09), heightDevice(0.048), 0.0),
              child: Text(
                "Shopping Cart",
                style: TextStyle(
                  fontFamily: "poppins",
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            leading: Transform(
              // you can forcefully translate values left side using Transform
              transform:
                  Matrix4.translationValues(0.0, heightDevice(0.05), 0.0),
              child: GestureDetector(
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 21,
                ),
                onTap: () => Navigator.pop(context),
              ),
            ),
          )),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                  ),

                  // Vegetables
                  Visibility(
                    visible: listVeget.length != 0,
                    child: Container(
                      alignment: Alignment.topLeft,
                      color: Color(0xFFE6E6E6),
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        'Vegerables',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    ),
                  ),
                  // List Vegetables
                  Scrollbar(
                    child: Column(
                      children: [
                        ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: listVeget.length,
                            scrollDirection: Axis.vertical,
                            addAutomaticKeepAlives: true,
                            itemBuilder: (context, index) => Padding(
                                  padding: const EdgeInsets.only(bottom: 2),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 5),
                                    color: Colors.white,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(
                                              right: 15, top: 5),
                                          height: heightDevice(0.24),
                                          width: witdthDevice(0.25),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: FittedBox(
                                              fit: BoxFit.cover,
                                              child: Image.asset(
                                                  listVeget[index].getImageSrc),
                                            ),
                                          ),
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.582,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        listVeget[index]
                                                            .getName,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                            fontFamily:
                                                                "poppins",
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                      GestureDetector(
                                                        onLongPress: () =>
                                                            setState(() {
                                                          manish_chutake
                                                              .removeItemListOrderByName(
                                                                  listVeget[
                                                                          index]
                                                                      .getName);
                                                          listVeget
                                                              .removeAt(index);
                                                        }),
                                                        child: ImageIcon(
                                                          AssetImage(
                                                              "assets/icons/deleted.png"),
                                                          size: 20,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                      height:
                                                          heightDevice(0.005)),
                                                  Container(
                                                      child: Text(
                                                    'Rs ${listVeget[index].getPrice + upPrice}',
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration
                                                                .lineThrough,
                                                        fontFamily: "poppins",
                                                        fontSize: 14,
                                                        color:
                                                            Color(0xFF393939)),
                                                  )),
                                                  SizedBox(
                                                      height:
                                                          heightDevice(0.01)),
                                                  Container(
                                                      child: Text(
                                                    '${listVeget[index].getPrice} Per/ kg',
                                                    style: TextStyle(
                                                      fontFamily: "poppins",
                                                      fontSize: 14,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  )),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      SizedBox(
                                                          width: witdthDevice(
                                                              0.3)),
                                                      // button down amount
                                                      InkWell(
                                                        onTap: () => setState(
                                                            () => listVeget[
                                                                    index]
                                                                .downAmount()),
                                                        child: Container(
                                                          width: witdthDevice(
                                                              0.08),
                                                          height: heightDevice(
                                                              0.075),
                                                          padding:
                                                              EdgeInsets.only(
                                                                  bottom: 9),
                                                          decoration:
                                                              BoxDecoration(
                                                            border: Border.all(
                                                                color:
                                                                    Colors.grey,
                                                                width: 2),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        7),
                                                          ),
                                                          child: Center(
                                                              child: const Text(
                                                            '__',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black),
                                                          )),
                                                        ),
                                                      ),
                                                      Text(listVeget[index]
                                                          .getAmount
                                                          .toString()),
                                                      // button up amount
                                                      InkWell(
                                                        onTap: () => setState(
                                                            () => listVeget[
                                                                    index]
                                                                .upAmount()),
                                                        child: Container(
                                                          width: witdthDevice(
                                                              0.08),
                                                          height: heightDevice(
                                                              0.075),
                                                          decoration:
                                                              BoxDecoration(
                                                            border: Border.all(
                                                                color:
                                                                    Colors.grey,
                                                                width: 2),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        7),
                                                          ),
                                                          child: Center(
                                                              child: const Text(
                                                                  '+')),
                                                        ),
                                                      ),
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
                      ],
                    ),
                  ),

                  // Dry Fruit
                  Visibility(
                    visible: listDryFruit.length != 0,
                    child: Container(
                      alignment: Alignment.topLeft,
                      color: Color(0xFFE6E6E6),
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        'Dry Fruits',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    ),
                  ),
                  Scrollbar(
                    child: Column(
                      children: [
                        ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: listDryFruit.length,
                            scrollDirection: Axis.vertical,
                            addAutomaticKeepAlives: true,
                            itemBuilder: (context, index) => Padding(
                                  padding: const EdgeInsets.only(bottom: 2),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 5),
                                    color: Colors.white,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(
                                              right: 15, top: 5),
                                          height: heightDevice(0.24),
                                          width: witdthDevice(0.25),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: FittedBox(
                                              fit: BoxFit.cover,
                                              child: Image.asset(
                                                  listDryFruit[index]
                                                      .getImageSrc),
                                            ),
                                          ),
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.582,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        listDryFruit[index]
                                                            .getName,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                            fontFamily:
                                                                "poppins",
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                      GestureDetector(
                                                        onLongPress: () =>
                                                            setState(() {
                                                          manish_chutake
                                                              .removeItemListOrderByName(
                                                                  listDryFruit[
                                                                          index]
                                                                      .getName);
                                                          listDryFruit
                                                              .removeAt(index);
                                                        }),
                                                        child: ImageIcon(
                                                          AssetImage(
                                                              "assets/icons/deleted.png"),
                                                          size: 20,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                      height:
                                                          heightDevice(0.005)),
                                                  Container(
                                                      child: Text(
                                                    'Rs ${listDryFruit[index].getPrice + upPrice}',
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration
                                                                .lineThrough,
                                                        fontFamily: "poppins",
                                                        fontSize: 14,
                                                        color:
                                                            Color(0xFF393939)),
                                                  )),
                                                  SizedBox(
                                                      height:
                                                          heightDevice(0.01)),
                                                  Container(
                                                      child: Text(
                                                    '${listDryFruit[index].getPrice} Per/ kg',
                                                    style: TextStyle(
                                                      fontFamily: "poppins",
                                                      fontSize: 14,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  )),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      SizedBox(
                                                          width: witdthDevice(
                                                              0.3)),
                                                      // button down amount
                                                      InkWell(
                                                        onTap: () => setState(
                                                            () => listDryFruit[
                                                                    index]
                                                                .downAmount()),
                                                        child: Container(
                                                          width: witdthDevice(
                                                              0.08),
                                                          height: heightDevice(
                                                              0.075),
                                                          padding:
                                                              EdgeInsets.only(
                                                                  bottom: 9),
                                                          decoration:
                                                              BoxDecoration(
                                                            border: Border.all(
                                                                color:
                                                                    Colors.grey,
                                                                width: 2),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        7),
                                                          ),
                                                          child: Center(
                                                              child: const Text(
                                                            '__',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black),
                                                          )),
                                                        ),
                                                      ),
                                                      Text(listDryFruit[index]
                                                          .getAmount
                                                          .toString()),
                                                      // button up amount
                                                      InkWell(
                                                        onTap: () => setState(
                                                            () => listDryFruit[
                                                                    index]
                                                                .upAmount()),
                                                        child: Container(
                                                          width: witdthDevice(
                                                              0.08),
                                                          height: heightDevice(
                                                              0.075),
                                                          decoration:
                                                              BoxDecoration(
                                                            border: Border.all(
                                                                color:
                                                                    Colors.grey,
                                                                width: 2),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        7),
                                                          ),
                                                          child: Center(
                                                              child: const Text(
                                                                  '+')),
                                                        ),
                                                      ),
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
                      ],
                    ),
                  ),

                  // Fruit
                  Visibility(
                    visible: listFruit.length != 0,
                    child: Container(
                      alignment: Alignment.topLeft,
                      color: Color(0xFFE6E6E6),
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        'Fruits',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    ),
                  ),
                  Scrollbar(
                    child: Column(
                      children: [
                        ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: listFruit.length,
                            scrollDirection: Axis.vertical,
                            addAutomaticKeepAlives: true,
                            itemBuilder: (context, index) => Padding(
                                  padding: const EdgeInsets.only(bottom: 2),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 5),
                                    color: Colors.white,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.only(
                                              right: 15, top: 5),
                                          height: heightDevice(0.24),
                                          width: witdthDevice(0.25),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: FittedBox(
                                              fit: BoxFit.cover,
                                              child: Image.asset(
                                                  listFruit[index].getImageSrc),
                                            ),
                                          ),
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.582,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        listFruit[index]
                                                            .getName,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                            fontFamily:
                                                                "poppins",
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                      GestureDetector(
                                                        onLongPress: () =>
                                                            setState(() {
                                                          manish_chutake
                                                              .removeItemListOrderByName(
                                                                  listFruit[
                                                                          index]
                                                                      .getName);
                                                          listFruit
                                                              .removeAt(index);
                                                        }),
                                                        child: ImageIcon(
                                                          AssetImage(
                                                              "assets/icons/deleted.png"),
                                                          size: 20,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                      height:
                                                          heightDevice(0.005)),
                                                  Container(
                                                      child: Text(
                                                    'Rs ${listFruit[index].getPrice + upPrice}',
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration
                                                                .lineThrough,
                                                        fontFamily: "poppins",
                                                        fontSize: 14,
                                                        color:
                                                            Color(0xFF393939)),
                                                  )),
                                                  SizedBox(
                                                      height:
                                                          heightDevice(0.01)),
                                                  Container(
                                                      child: Text(
                                                    '${listFruit[index].getPrice} Per/ kg',
                                                    style: TextStyle(
                                                      fontFamily: "poppins",
                                                      fontSize: 14,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  )),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: [
                                                      SizedBox(
                                                          width: witdthDevice(
                                                              0.3)),
                                                      // button down amount
                                                      InkWell(
                                                        onTap: () => setState(
                                                            () => listFruit[
                                                                    index]
                                                                .downAmount()),
                                                        child: Container(
                                                          width: witdthDevice(
                                                              0.08),
                                                          height: heightDevice(
                                                              0.075),
                                                          padding:
                                                              EdgeInsets.only(
                                                                  bottom: 9),
                                                          decoration:
                                                              BoxDecoration(
                                                            border: Border.all(
                                                                color:
                                                                    Colors.grey,
                                                                width: 2),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        7),
                                                          ),
                                                          child: Center(
                                                              child: const Text(
                                                            '__',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black),
                                                          )),
                                                        ),
                                                      ),
                                                      Text(listFruit[index]
                                                          .getAmount
                                                          .toString()),
                                                      // button up amount
                                                      InkWell(
                                                        onTap: () => setState(
                                                            () => listFruit[
                                                                    index]
                                                                .upAmount()),
                                                        child: Container(
                                                          width: witdthDevice(
                                                              0.08),
                                                          height: heightDevice(
                                                              0.075),
                                                          decoration:
                                                              BoxDecoration(
                                                            border: Border.all(
                                                                color:
                                                                    Colors.grey,
                                                                width: 2),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        7),
                                                          ),
                                                          child: Center(
                                                              child: const Text(
                                                                  '+')),
                                                        ),
                                                      ),
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
                      ],
                    ),
                  ),

                  Container(
                    color: Colors.grey[100],
                    height: heightDevice(0.15),
                  )
                ],
              ),
            ),

            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(
                  horizontal: witdthDevice(0.03),
                  vertical: heightDevice(0.015)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.pin_drop_outlined),
                  DropdownButton<String>(
                    underline: Container(color: Colors.white),
                    value: dropdownValue,
                    icon: const Icon(
                      Icons.keyboard_arrow_down,
                      size: 35,
                    ),
                    elevation: 16,
                    style: const TextStyle(color: Colors.black),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    items: <String>[
                      '440001 Nagpur ,Maharashtra',
                      '348 Nguyễn Trãi ,Thanh Xuân',
                      '15 Triều Khúc, Nam Từ Liêm',
                      '119 Minh Khai, Hai Bà Trưng'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  Text(
                    "Change Address",
                    style: TextStyle(
                      color: Colors.blue[400],
                    ),
                  )
                ],
              ),
            ),
            // Button Place Order
            Positioned(
              bottom: 0,
              child: Container(
                alignment: Alignment.topCenter,
                height: heightDevice(0.14),
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total- Rs ${manish_chutake.getSumListOrder()}',
                      style: TextStyle(
                          fontFamily: "pippins",
                          fontSize: 18,
                          color: Color(0xFF393939),
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.3),
                    SizedBox(
                      width: witdthDevice(0.3),
                      height: heightDevice(0.1),
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
                            "Place Order",
                            style: Theme.of(context).textTheme.headline1,
                          )),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
