import '../ingredients/pizza-ingredient-factory.dart';
import 'pizza.dart';

class CheesePizza extends Pizza {
  PizzaIngredientFactory ingredientFactory;

  CheesePizza(PizzaIngredientFactory ingredientFactory) {
    this.name = 'Cheese Pizza';
    this.ingredientFactory = ingredientFactory;
  }

  @override
  void prepare() {
    print('Preparing ${this.name}...');
    this.dough = this.ingredientFactory.createDough();
    this.sauce = this.ingredientFactory.createSauce();
    this.cheese = this.ingredientFactory.createCheese();
  }
}
