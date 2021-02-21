import '../ingredients/pizza-ingredient-factory.dart';
import 'pizza.dart';

class PepperoniPizza extends Pizza {
  PizzaIngredientFactory ingredientFactory;

  PepperoniPizza(PizzaIngredientFactory ingredientFactory) {
    this.name = 'Pepperoni Pizza';
    this.ingredientFactory = ingredientFactory;
  }

  @override
  void prepare() {
    print('Preparing ${this.name}...');
    this.dough = this.ingredientFactory.createDough();
    this.sauce = this.ingredientFactory.createSauce();
    this.cheese = this.ingredientFactory.createCheese();
    this.veggies = this.ingredientFactory.createVeggies();
    this.pepperoni = this.ingredientFactory.createPepperoni();
  }
}
