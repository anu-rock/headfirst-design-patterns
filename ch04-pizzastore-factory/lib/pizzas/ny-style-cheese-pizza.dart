import 'pizza.dart';

class NYStyleCheesePizza extends Pizza {
  @override
  String get name => 'NY Style Sauce & Cheese Pizza';

  @override
  String get dough => 'Thin Crust Dough';

  @override
  String get sauce => 'Marinara Sauce';

  NYStyleCheesePizza() {
    this.toppings.add('Grated Reggiano Cheese');
  }
}
