abstract class Pizza {
  String get name {
    return 'Unknown Pizza';
  }

  String get dough {
    return 'Unknown Dough';
  }

  String get sauce {
    return 'Unknown Sauce';
  }

  List<String> get toppings {
    return List<String>();
  }

  void prepare() {
    print('Preparing $name');
    print('Tossing dough...');
    print('Adding sauce...');
    print('Adding toppings...');
    this.toppings.forEach((topping) {
      print('   $topping');
    });
  }

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
