import 'quack_behavior.dart';

class NoQuack implements QuackBehavior {
  @override
  void quack() {
    print('<<silence>>');
  }
}
