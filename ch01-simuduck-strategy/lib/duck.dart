import 'fly_behavior.dart';
import 'quack_behavior.dart';

abstract class Duck {
  FlyBehavior flyBehavior;
  QuackBehavior quackBehavior;

  void setFlyBehavior(FlyBehavior fb) {
    this.flyBehavior = fb;
  }

  void setQuackBehavior(QuackBehavior qb) {
    this.quackBehavior = qb;
  }

  void display();

  void swim() {
    print('All ducks swim alike');
  }

  void fly() {
    this.flyBehavior.fly();
  }

  void quack() {
    this.quackBehavior.quack();
  }
}
