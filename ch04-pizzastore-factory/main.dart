import 'lib/chicago-pizza-store.dart';
import 'lib/ny-pizza-store.dart';
import 'lib/pizza-store.dart';
import 'lib/pizza.dart';

void main(List<String> args) {
  PizzaStore nyStore = NYPizzaStore();
  PizzaStore chicagoStore = ChicagoPizzaStore();

  Pizza ethansPizza = nyStore.orderPizza('cheese');
  print('Ethan\'s order is ready - ${ethansPizza.name}');

  Pizza joelsPizza = chicagoStore.orderPizza('cheese');
  print('Joel\'s order is ready - ${joelsPizza.name}');
}
