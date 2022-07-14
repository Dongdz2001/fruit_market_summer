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
  // list  quantity per product for one user
  List<int> _list_quantity_per_product = [];

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
      this._listOrder.add(food!);
      this._list_quantity_per_product.add(food.getAmount);
    } else {
      bool _flag = true;
      for (var i = 0; i < _listOrder.length; i++) {
        if (_listOrder[i].getName == food!.getName) {
          int temp = this._list_quantity_per_product[i] +
              int.parse(food.getAmount.toString());
          setItemQuantityPerProduct(temp, i);
          _flag = !_flag;
          break;
        }
      }
      if (_flag) {
        this._listOrder.add(food!);
        this._list_quantity_per_product.add(food.getAmount);
      }
    }

    print("${_listOrder.length}");
  }

  Food getItemListOrder(int index) => this._listOrder[index];

  void removeItemListOrder(int index) {
    if (isInvalidIndexItemOrder(index)) {
      this._listOrder.removeAt(index);
      this._list_quantity_per_product.removeAt(index);
    } else
      print("$index out of range");
  }

  void removeItemListOrderByName(String typeName) {
    for (var i = 0; i < this._listOrder.length; i++) {
      if (this._listOrder[i].getName == typeName) {
        this._listOrder.removeAt(i);
        this._list_quantity_per_product.removeAt(i);
        break;
      }
    }
  }

  // edit , get Quantity Per Product
  void setItemQuantityPerProduct(int value, int index) =>
      isInvalidIndexItemOrder(index)
          ? this._list_quantity_per_product[index] = value
          : null;
  int getItemQuantityPerProduct(int index) => isInvalidIndexItemOrder(index)
      ? this._list_quantity_per_product[index]
      : -1;
  // get list food order by type
  List<Food> getListFoodOrderFollowType(String typeName) {
    List<Food> list = [];
    for (var i = 0; i < this._listOrder.length; i++) {
      if (this._listOrder[i].getTypeOfFood().toString() == typeName)
        list.add(this._listOrder[i]);
      print(
          "check = ${this._listOrder[i].getTypeOfFood().toString() == typeName}");
      print("TypeName = ${this._listOrder[i].getTypeOfFood().toString()}");
    }

    return list;
  }

  // up down Amount in a List Quantity Per Product
  bool isDefaultAmount(int index) => this._list_quantity_per_product[index] > 0;
  bool isMaxAmount(int index) => this._list_quantity_per_product[index] < 50;
  void upAmountUserProduct(int index) => isMaxAmount(index)
      ? this._list_quantity_per_product[index]++
      : print("Amount was max");
  void downAmountProduct(int index) => isDefaultAmount(index)
      ? this._list_quantity_per_product[index]--
      : print("Amount was min");

  // contructor for Users
  User({required this.name, required this.email, required this.imageSrc});
}
