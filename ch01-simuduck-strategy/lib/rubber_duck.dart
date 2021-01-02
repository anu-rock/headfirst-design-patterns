import 'duck.dart';
import 'fly_no_way.dart';
import 'squeek.dart';

class RubberDuck extends Duck {
  RubberDuck() {
    this.flyBehavior = FlyNoWay();
    this.quackBehavior = Squeek();
  }

  @override
  void display() {
    print('Rubber Duck');
  }
}
