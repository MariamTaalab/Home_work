/*Write a Dart program that formats a price tag string with a currency. Apply string methods such as
toString, padLeft, and length to format and compare the results. */
void main() {
  double price = 150.0;
  String currency = 'EGP';
  String priceString = price.toString();
  String formattedPrice = priceString.padLeft(7, ' '); // two spaces 150.0
  String priceTag = "$formattedPrice $currency";
  print("Original price String :$priceString");
  print("Formated price:$formattedPrice");
  print("price tag::$priceTag");
  print("Length of original price:${priceString.length}");
  print("Length of formatted price:${formattedPrice.length}");
  if (formattedPrice.length > priceString.length) {
    print("Formatted price is longer than original");
  } else {
    print("Formatted price has the same length as original");
  }
}
