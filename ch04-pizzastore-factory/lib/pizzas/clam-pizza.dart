import '../ingredients/pizza-ingredient-factory.dart';
import 'pizza.dart';

class ClamPizza extends Pizza {
  PizzaIngredientFactory ingredientFactory;

  ClamPizza(PizzaIngredientFactory ingredientFactory) {
    this.name = 'Clam Pizza';
    this.ingredientFactory = ingredientFactory;
  }

  @override
  void prepare() {
    print('Preparing ${this.name}...');
    this.dough = this.ingredientFactory.createDough();
    this.sauce = this.ingredientFactory.createSauce();
    this.cheese = this.ingredientFactory.createCheese();
    this.clams = this.ingredientFactory.createClams();
  }
}
