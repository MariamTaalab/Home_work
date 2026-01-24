/* Write a Dart program that applies discounts to a price. Use nested if/else to apply different
discounts based on whether the user is a student, has a coupon, or if the price is above a threshold.
Print the final price*/
void main() {
  double price = 200.0;
  bool isStudent = true;
  bool hasCoupon = false;
  double threhold = 150.0;
  double finalPrice = price;
  if (isStudent) {
    finalPrice = price * 0.8;
    print("Student discount applied : $finalPrice");
  } else {
    if (hasCoupon) {
      finalPrice = price * 0.9;
      print("Coupon discount applied: $finalPrice");
    } else {
      if (price > threhold) {
        finalPrice = price * 0.95;
        print("price threhold discount applied: $finalPrice");
      } else {
        print("No discount applied: $finalPrice");
      }
    }
  }
  print("Final price:$finalPrice");
}
