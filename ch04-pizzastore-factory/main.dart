import 'lib/stores/chicago-pizza-store.dart';
import 'lib/stores/ny-pizza-store.dart';
import 'lib/stores/pizza-store.dart';
import 'lib/pizzas/pizza.dart';

void main(List<String> args) {
  PizzaStore nyStore = NYPizzaStore();
  PizzaStore chicagoStore = ChicagoPizzaStore();

  Pizza ethansPizza = nyStore.orderPizza('cheese');
  print('Ethan\'s order is ready - ${ethansPizza.name}');

  Pizza joelsPizza = chicagoStore.orderPizza('cheese');
  print('Joel\'s order is ready - ${joelsPizza.name}');
}
