import 'pizza.dart';

class NYStyleVeggiePizza extends Pizza {
  @override
  String get name => 'NY Style Veggie Pizza';

  @override
  String get dough => 'Thin Crust Dough';

  @override
  String get sauce => 'Marinara Sauce';

  NYStyleVeggiePizza() {
    this.toppings.add('Grated Reggiano Cheese');
  }
}
