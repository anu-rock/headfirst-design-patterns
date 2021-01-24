import 'pizza.dart';

class NYStylePepperoniPizza extends Pizza {
  @override
  String get name => 'NY Style Pepperoni Pizza';

  @override
  String get dough => 'Thin Crust Dough';

  @override
  String get sauce => 'Marinara Sauce';

  NYStylePepperoniPizza() {
    this.toppings.add('Grated Reggiano Cheese');
  }
}
