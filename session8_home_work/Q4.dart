/*Create a class Product with private fields _name and _price.
- Reject empty names and negative prices in setters.
- Add a computed getter discountedPrice that returns the price with a 10% discount applied.
- In main(), demonstrate setting values and printing the original and discounted price. */
import 'Q4product.dart';

void main() {
  Product product = Product();
  product.name = "PC";
  product.price = 50000;
  print("Product: ${product.name}");
  print("Original price: ${product.price}");
  print("Discounted price: ${product.discountedPrice}");

  product.name = '';
  product.price = -5500;
  print("Product: ${product.name}");
  print("Original price: ${product.price}");
  print("Discounted price: ${product.discountedPrice}");

}
