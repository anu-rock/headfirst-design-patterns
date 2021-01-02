import 'duck.dart';
import 'fly_with_wings.dart';
import 'quack.dart';

class MallardDuck extends Duck {
  MallardDuck() {
    this.flyBehavior = FlyWithWings();
    this.quackBehavior = Quack();
  }

  @override
  void display() {
    print('Mallard Duck');
  }
}
