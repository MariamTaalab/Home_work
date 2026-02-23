/*2. Food Delivery App – Orders & Menu
Imagine you are building a food delivery app.
- The app has a menu of food items (each with a name, price, and category like "Pizza" or "Drinks").
- A user can add multiple items to an order.
- The app should calculate the total price of the order */
import 'food.dart';

void main() {
  FoodItem pizza = FoodItem('chicken pizza', 650, Category.pizza);
  FoodItem cola = FoodItem('pepsi', 30, Category.drinks);
  Order order = Order();
  order.addItem(pizza, 2);
  order.addItem(cola, 2);
  order.ShowOrder();
}
