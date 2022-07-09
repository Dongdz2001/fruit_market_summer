class Food {
  late String _name;
  late String _type;
  late String _imageSrc;
  late int _price;
  double _ratingQuantity = 0;
  bool _favoutite = false;

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

  Food(this._name, this._type, this._imageSrc, this._price);
}
