import 'beverage.dart';

abstract class CondimentDecorator extends Beverage {
  Beverage _beverage;
  double cost;

  CondimentDecorator(Beverage beverage) {
    this._beverage = beverage;
  }

  @override
  String get Description {
    return '${this._beverage.Description}, ${this.description}';
  }

  @override
  double get Cost {
    return this._beverage.Cost + this.cost;
  }
}
