import '../ingredients/ny-pizza-ingredient-factory.dart';
import '../ingredients/pizza-ingredient-factory.dart';
import '../pizzas/cheese-pizza.dart';
import '../pizzas/clam-pizza.dart';
import '../pizzas/pepperoni-pizza.dart';
import '../pizzas/veggie-pizza.dart';
import 'pizza-store.dart';
import '../pizzas/pizza.dart';

class NYPizzaStore extends PizzaStore {
  Pizza _pizza;
  PizzaIngredientFactory _ingredientFactory = NYPizzaIngredientFactory();

  @override
  Pizza createPizza(String type) {
    if (type == 'cheese') {
      this._pizza = CheesePizza(this._ingredientFactory);
      this._pizza.name = 'NY Style Cheese Pizza';
    } else if (type == 'veggie') {
      this._pizza = VeggiePizza(this._ingredientFactory);
      this._pizza.name = 'NY Style Veggie Pizza';
    } else if (type == 'clam') {
      this._pizza = ClamPizza(this._ingredientFactory);
      this._pizza.name = 'NY Style Clam Pizza';
    } else if (type == 'pepperoni') {
      this._pizza = PepperoniPizza(this._ingredientFactory);
      this._pizza.name = 'NY Style Pepperoni Pizza';
    } else {
      return null;
    }

    return this._pizza;
  }
}
