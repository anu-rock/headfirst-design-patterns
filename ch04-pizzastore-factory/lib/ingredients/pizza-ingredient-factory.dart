import 'cheeses/cheese.dart';
import 'clams/clams.dart';
import 'doughs/dough.dart';
import 'pepperonis/pepperoni.dart';
import 'sauces/sauce.dart';
import 'veggies/veggie.dart';

abstract class PizzaIngredientFactory {
  Dough createDough();
  Sauce createSauce();
  Cheese createCheese();
  List<Veggie> createVeggies();
  Pepperoni createPepperoni();
  Clams createClams();
}
