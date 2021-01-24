import 'ny-style-cheese-pizza.dart';
import 'ny-style-clam-pizza.dart';
import 'ny-style-pepperoni-pizza.dart';
import 'ny-style-veggie-pizza.dart';
import 'pizza-store.dart';
import 'pizza.dart';

class NYPizzaStore extends PizzaStore {
  @override
  Pizza createPizza(String type) {
    if (type == 'cheese') {
      return NYStyleCheesePizza();
    } else if (type == 'veggie') {
      return NYStyleVeggiePizza();
    } else if (type == 'clam') {
      return NYStyleClamPizza();
    } else if (type == 'pepperoni') {
      return NYStylePepperoniPizza();
    } else {
      return null;
    }
  }
}
