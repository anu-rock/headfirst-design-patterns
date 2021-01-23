import 'beverage.dart';
import 'condiment-decorator.dart';

class Soy extends CondimentDecorator {
  Soy(Beverage beverage) : super(beverage);

  @override
  String description = 'Soy';

  @override
  double cost = 0.15;
}
