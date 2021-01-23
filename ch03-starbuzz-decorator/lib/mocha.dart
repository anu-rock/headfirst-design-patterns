import 'beverage.dart';
import 'condiment-decorator.dart';

class Mocha extends CondimentDecorator {
  Mocha(Beverage beverage) : super(beverage);

  @override
  String description = 'Mocha';

  @override
  double cost = 0.20;
}
