import 'pizza.dart';

class ChicagoStyleCheesePizza extends Pizza {
  @override
  String get name => 'Chicago Style Deep Dish Cheese Pizza';

  @override
  String get dough => 'Extra Thick Crust Dough';

  @override
  String get sauce => 'Plum Tomato Sauce';

  ChicagoStyleCheesePizza() {
    this.toppings.add('Shredded Mozzarella Cheese');
  }

  @override
  void cut() {
    print('Cutting the pizza into square slices');
  }
}
