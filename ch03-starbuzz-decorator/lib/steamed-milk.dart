import 'beverage.dart';
import 'condiment-decorator.dart';

class SteamedMilk extends CondimentDecorator {
  SteamedMilk(Beverage beverage) : super(beverage);

  @override
  String description = 'Steamed Milk';

  @override
  double cost = 0.10;
}
