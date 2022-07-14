import 'package:fruit_market_summer/model/food_class/food.dart';

class User {
  late String name;
  // geter seter for name
  get getName => this.name;
  set setName(String name) => this.name = name;

  late String email;
  // getter setter for email
  get getEmail => this.email;
  set setEmail(String email) => this.email = email;

  // gettter setter for image
  late String imageSrc;
  get getImageSrc => this.imageSrc;
  set setImageSrc(String imageSrc) => this.imageSrc = imageSrc;

  //list favourite food for one user
  List<Food> _listFavoutrite = [];
  get getListFavoutrite => this._listFavoutrite;
  set setListFavoutrite(List<Food> value) => this._listFavoutrite = value;

  //list order food for one user
  List<Food> _listOrder = [];

  // method add , remove , check null for list Favourite
  String getNameItemFaVouRite(int index) => this._listFavoutrite[index].getName;
  int getLengthFavourite() => this._listFavoutrite.length;
  void addItemFavourite(Food food) => _listFavoutrite.add(food);
  bool isInvalidIndexItemFavourite(int index) => index < _listFavoutrite.length;
  Food getItemFavourite(int index) => this._listFavoutrite[index];
  void addItemFavoiurite(Food? food) => this._listFavoutrite.add(food!);

  void removeItemListFavourite(int index) => isInvalidIndexItemFavourite(index)
      ? this._listFavoutrite.removeAt(index)
      : print("$index out of range");

  // metod add , get , remove for list order food
  int getLengtListOrder() => this._listOrder.length;
  bool isInvalidIndexItemOrder(int index) => index < _listOrder.length;
  void addItemListOrder(Food? food) {
    if (_listOrder.length == 0) {
      this._listOrder.add(Food.clone(food!)..setAmount = food.getAmount);
      // this._list_quantity_per_product.add(food.getAmount);
    } else {
      bool _flag = true;
      for (var i = 0; i < _listOrder.length; i++) {
        if (_listOrder[i].getName == food!.getName &&
            this._listOrder[i].getType == food.getType!) {
          this._listOrder[i].setAmount = this._listOrder[i].getAmount +
              int.parse(food.getAmount.toString());
          _flag = !_flag;
          break;
        }
      }
      if (_flag) {
        this._listOrder.add(Food.clone(food!)..setAmount = food.getAmount);
      }
    }
  }

  Food getItemListOrder(int index) => this._listOrder[index];

  void removeItemListOrder(int index) {
    if (isInvalidIndexItemOrder(index)) {
      this._listOrder.removeAt(index);
    } else
      print("$index out of range");
  }

  void removeItemListOrderByName(String itemName) {
    for (var i = 0; i < this._listOrder.length; i++) {
      if (this._listOrder[i].getName == itemName) {
        this._listOrder.removeAt(i);
        break;
      }
    }
  }

  // get list food order by type
  List<Food> getListFoodOrderFollowType(String typeName) {
    List<Food> list = [];
    for (var i = 0; i < this._listOrder.length; i++) {
      if (this._listOrder[i].getTypeOfFood().toString() == typeName)
        list.add(this._listOrder[i]);
    }
    return list;
  }

  // caculate sum of list order
  int getSumListOrder() {
    int sum = 0;
    for (var i = 0; i < this._listOrder.length; i++) {
      sum += int.parse(this._listOrder[i].getPrice.toString()) *
          int.parse(this._listOrder[i].getAmount.toString());
    }
    return sum;
  }

  // contructor for Users
  User({required this.name, required this.email, required this.imageSrc});
}
