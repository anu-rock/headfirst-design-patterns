import 'pizza.dart';

class NYStyleClamPizza extends Pizza {
  @override
  String get name => 'NY Style Clam Pizza';

  @override
  String get dough => 'Thin Crust Dough';

  @override
  String get sauce => 'Marinara Sauce';

  NYStyleClamPizza() {
    this.toppings.add('Grated Reggiano Cheese');
  }
}
