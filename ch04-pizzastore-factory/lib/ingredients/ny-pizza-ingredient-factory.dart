import 'cheeses/reggiano-cheese.dart';
import 'clams/fresh-clams.dart';
import 'doughs/thin-crust-dough.dart';
import 'pepperonis/pepperoni.dart';
import 'doughs/dough.dart';
import 'clams/clams.dart';
import 'cheeses/cheese.dart';
import 'pepperonis/sliced-pepperoni.dart';
import 'pizza-ingredient-factory.dart';
import 'sauces/marinara-sauce.dart';
import 'veggies/garlic.dart';
import 'veggies/mushroom.dart';
import 'veggies/onion.dart';
import 'veggies/red-pepper.dart';
import 'veggies/veggie.dart';
import 'sauces/sauce.dart';

class NYPizzaIngredientFactory extends PizzaIngredientFactory {
  @override
  Cheese createCheese() {
    return ReggianoCheese();
  }

  @override
  Clams createClams() {
    return FreshClams();
  }

  @override
  Dough createDough() {
    return ThinCrustDough();
  }

  @override
  Pepperoni createPepperoni() {
    return SlicedPepperoni();
  }

  @override
  Sauce createSauce() {
    return MarinaraSauce();
  }

  @override
  List<Veggie> createVeggies() {
    return [Garlic(), Onion(), Mushroom(), RedPepper()];
  }
}
