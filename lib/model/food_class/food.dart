import 'dart:math';

import 'package:flutter/cupertino.dart';

class Food {
  late String _name;
  late String _type;
  late String _imageSrc;
  String _delivered = "Delivered on 24 Feb 2021";
  late int _price;
  double _rateGeneral = 1 + new Random().nextInt(5).toDouble();
  double _ratingQuantity = 0;
  bool _favoutite = false;
  List<String> _nutrition = [
    "Fiber",
    "Potassium",
    "Iron",
    "Magnesium",
    "Vitamin C",
    "Vitamin K",
    "Zinc",
    "Phosphorous"
  ];
  String introProduct = """ 
  Grapes will provide natural nutrients. The  Chemical 
in organic grapes which can be healthier hair and 
skin. It can be improve Your heart health. Protect your
body from Cancer.
  """;
  //get set RateGeneral
  get getRateGeneral => this._rateGeneral;
  set setRateGeneral(double value) => this._rateGeneral = value;

  // get set Delivered
  get getDelivered => this._delivered;
  set setDelivered(String value) => this._delivered = value;

  // get set name
  get getName => this._name;
  set setName(String value) => this._name = value;

  // get set Type
  get getType => this._type;
  set setType(String value) => this._type = value;

  // get set image source
  get getImageSrc => this._imageSrc;
  set setImageSrc(String value) => this._imageSrc = value;

  // get set price
  get getPrice => this._price;
  set setPrice(int value) => this._price = value;

  // get set ratingQuantity
  get getRatingQuantity => this._ratingQuantity;
  set setRatingQuantity(double ratingQuantity) =>
      this._ratingQuantity = ratingQuantity;

  // get set favourite
  get getFavoutite => this._favoutite;
  set setFavoutite(bool value) => this._favoutite = value;

  // get and set list nutrition
  get getNutrition => this._nutrition;
  set setNutrition(List<String> value) => this._nutrition = value;

  // get set introduction product
  get geIntroProduct => this.introProduct;
  void setIntroProduct(String value) => this.introProduct = value;

  // get set ItemNutition
  bool isValidItemNutition(int index) => _nutrition.length > index;
  String getItemNutition(int index) => isValidItemNutition(index)
      ? this._nutrition[index]
      : "Error invalid item";
  void setItemNutrition(int index, String value) => isValidItemNutition(index)
      ? this._nutrition[index] = value
      : print("Error invalid item");

  // contructor for Food object
  Food(this._name, this._type, this._imageSrc, this._price);
  // Food(this._name, this._type, this._imageSrc, this._price, this._nutrition);
}
