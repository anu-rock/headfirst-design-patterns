import 'pizza-store.dart';
import '../pizzas/chicago-style-cheese-pizza.dart';
import '../pizzas/pizza.dart';

class ChicagoPizzaStore extends PizzaStore {
  @override
  Pizza createPizza(String type) {
    if (type == 'cheese') {
      return ChicagoStyleCheesePizza();
    } else {
      return null;
    }
  }
}
