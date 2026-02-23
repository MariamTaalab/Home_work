/*2. Food Delivery App – Orders & Menu
Imagine you are building a food delivery app.
- The app has a menu of food items (each with a name, price, and category like "Pizza" or "Drinks").
- A user can add multiple items to an order.
- The app should calculate the total price of the order */
enum Category { pizza, drinks }

class FoodItem {
  String _name;
  double _price;
  Category _category;
  FoodItem(this._name, this._price, this._category);
  String get name => _name;
  double get price => _price;
  Category get category => _category;
}

class OrderItem {
  FoodItem _foodItem;
  int _quantity;
  OrderItem(this._foodItem, this._quantity);
  FoodItem get foodItem => _foodItem;
  int get quantity => _quantity;
  double get totalPrice => _foodItem.price * _quantity;
}

class Order {
  List<OrderItem> _items = [];
  void addItem(FoodItem foodItem, int quantity) {
    _items.add(OrderItem(foodItem, quantity));
  }

  double calculateTotal() {
    double total = 0;
    for (var item in _items) {
      total += item.totalPrice;
    }
    return total;
  }

  void ShowOrder() {
    print("Order Details:");
    for (var item in _items) {
      var food = item.foodItem;
      print(
        '${food.name} *${item.quantity} = ${item.totalPrice.toStringAsFixed(2)}',
      );
    }
    print("Total price: ${calculateTotal().toStringAsFixed(2)}");
  }
}
