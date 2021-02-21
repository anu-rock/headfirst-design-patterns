import './pepperonis/pepperoni.dart';
import './doughs/dough.dart';
import './clams/clams.dart';
import './cheeses/cheese.dart';
import './pizza-ingredient-factory.dart';
import './veggies/veggie.dart';
import './sauces/sauce.dart';
import 'cheeses/mozzarella-cheese.dart';
import 'clams/frozen-clams.dart';
import 'doughs/thick-crust-dough.dart';
import 'pepperonis/sliced-pepperoni.dart';
import 'sauces/plum-tomato-sauce.dart';
import 'veggies/black-olives.dart';
import 'veggies/egg-plant.dart';
import 'veggies/spinach.dart';

class ChicagoPizzaIngredientFactory extends PizzaIngredientFactory {
  @override
  Cheese createCheese() {
    return MozzarellaCheese();
  }

  @override
  Clams createClams() {
    return FrozenClams();
  }

  @override
  Dough createDough() {
    return ThickCrustDough();
  }

  @override
  Pepperoni createPepperoni() {
    return SlicedPepperoni();
  }

  @override
  Sauce createSauce() {
    return PlumTomatoSauce();
  }

  @override
  List<Veggie> createVeggies() {
    return [BlackOlives(), Spinach(), EggPlant()];
  }
}
