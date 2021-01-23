import 'beverage.dart';

class Decaf extends Beverage {
  @override
  String description = 'Decaf Coffee';

  @override
  double get Cost {
    return 1.05;
  }
}
