import '../ingredients/pizza-ingredient-factory.dart';
import 'pizza.dart';

class VeggiePizza extends Pizza {
  PizzaIngredientFactory ingredientFactory;

  VeggiePizza(PizzaIngredientFactory ingredientFactory) {
    this.name = 'Veggie Pizza';
    this.ingredientFactory = ingredientFactory;
  }

  @override
  void prepare() {
    print('Preparing ${this.name}...');
    this.dough = this.ingredientFactory.createDough();
    this.sauce = this.ingredientFactory.createSauce();
    this.cheese = this.ingredientFactory.createCheese();
    this.veggies = this.ingredientFactory.createVeggies();
  }
}
