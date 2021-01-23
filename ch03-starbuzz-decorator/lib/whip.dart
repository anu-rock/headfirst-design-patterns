import 'beverage.dart';
import 'condiment-decorator.dart';

class Whip extends CondimentDecorator {
  Whip(Beverage beverage) : super(beverage);

  @override
  String description = 'Whip';

  @override
  double cost = 0.10;
}
