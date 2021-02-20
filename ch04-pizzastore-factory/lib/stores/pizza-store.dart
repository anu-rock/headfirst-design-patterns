import '../pizzas/pizza.dart';

abstract class PizzaStore {
  Pizza orderPizza(String type) {
    Pizza pizza = this.createPizza(type);

    pizza.prepare();
    pizza.bake();
    pizza.cut();
    pizza.box();

    return pizza;
  }

  Pizza createPizza(String type);
}
