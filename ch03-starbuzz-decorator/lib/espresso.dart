import 'beverage.dart';

class Espresso extends Beverage {
  @override
  String description = 'Espresso Coffee';

  @override
  double get Cost {
    return 1.99;
  }
}
