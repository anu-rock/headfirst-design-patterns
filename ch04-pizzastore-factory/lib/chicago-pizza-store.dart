import 'chicago-style-cheese-pizza.dart';
import 'pizza-store.dart';
import 'pizza.dart';

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
