class CreditCard {
  String cardholderName;
  String cardNumber;
  String dateMounth;
  int validThruYear;
  int cardVerificationValue;

  // getter setter cardholderName
  get getCardholderName => this.cardholderName;
  set setCardholderName(cardholderName) => this.cardholderName = cardholderName;

  // getter setter cardNumber
  get getCardNumber => this.cardNumber;
  set setCardNumber(cardNumber) => this.cardNumber = cardNumber;

  // getter setter dateMounth
  get getDateMounth => this.dateMounth;
  set setDateMounth(dateMounth) => this.dateMounth = dateMounth;

  // getter setter validThruYear
  get getValidThruYear => this.validThruYear;
  set setValidThruYear(validThruYear) => this.validThruYear = validThruYear;

  // getter setter cardVerificationValue
  get getCardVerificationValue => this.cardVerificationValue;
  set setCardVerificationValue(cardVerificationValue) =>
      this.cardVerificationValue = cardVerificationValue;

  // get 4 character , exmaple a = "10010000" -> get(1) = "0000", get(0) = "1111" , else none
  String getItemPart4CharacterCardNumber(int i) {
    if (i < 4) {
      String temp = this.cardNumber.toString();
      return temp.substring(i * 4, i * 4 + 4);
    }
    return "none";
  }

  CreditCard(
      {this.cardholderName = "No name",
      this.cardNumber = "000000000000",
      this.dateMounth = "January",
      this.validThruYear = 2001,
      this.cardVerificationValue = 100});
}
