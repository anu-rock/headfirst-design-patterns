import '../ingredients/cheeses/cheese.dart';
import '../ingredients/clams/clams.dart';
import '../ingredients/doughs/dough.dart';
import '../ingredients/pepperonis/pepperoni.dart';
import '../ingredients/sauces/sauce.dart';
import '../ingredients/veggies/veggie.dart';

abstract class Pizza {
  String name;

  Dough dough;
  Sauce sauce;
  List<Veggie> veggies;
  Cheese cheese;
  Pepperoni pepperoni;
  Clams clams;

  void prepare();

  void bake() {
    print('Baking for 25 mins at 300 degs');
  }

  void cut() {
    print('Cutting the pizza into diagonal slices');
  }

  void box() {
    print('Placing the pizza in official PizzaStore box');
  }
}
