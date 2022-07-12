import 'package:fruit_market_summer/controller/input_data/init_vegetable.dart';
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
  void addItemFavoiurite(Food? food) {
    this._listFavoutrite.add(food!);
    this._list_quantity_per_product.add(0);
  }

  void removeItemListFavourite(int index) => isInvalidIndexItemFavourite(index)
      ? this._listFavoutrite.removeAt(index)
      : print("$index out of range");

  // metod add , get , remove for list order food
  bool isInvalidIndexItemOrder(int index) => index < _listOrder.length;
  void addItemListOrder(Food? food) => this._listOrder.add(food!);
  Object getItemListOrder(int index) => isInvalidIndexItemOrder(index)
      ? this._listOrder[index]
      : "$index out of range";
  void removeItemListOrder(int index) {
    if (isInvalidIndexItemOrder(index)) {
      this._listOrder.removeAt(index);
      this._listOrder.removeAt(index);
    } else
      print("$index out of range");
  }

  // edit , get Quantity Per Product
  void setItemQuantityPerProduct(int value, int index) =>
      isInvalidIndexItemOrder(index)
          ? this._list_quantity_per_product[index] = value
          : null;
  int getItemQuantityPerProduct(int index) => isInvalidIndexItemOrder(index)
      ? this._list_quantity_per_product[index]
      : -1;

  // contructor for Users
  User({required this.name, required this.email, required this.imageSrc});
}
