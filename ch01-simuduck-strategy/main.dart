import 'lib/fly_with_rocket.dart';
import 'lib/mallart_duck.dart';
import 'lib/rubber_duck.dart';

void main(List<String> args) {
  MallardDuck mallard = MallardDuck();
  mallard.display();
  mallard.fly();
  mallard.quack();

  RubberDuck ducky = RubberDuck();
  ducky.display();
  ducky.fly();
  ducky.quack();

  ducky.setFlyBehavior(FlyWithRocket());
  ducky.fly();
}
