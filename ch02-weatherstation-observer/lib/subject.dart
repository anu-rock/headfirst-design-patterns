import 'observer.dart';

/// Subject or Observable, one and the same thing.
abstract class Subject {
  void addObserver(Observer o);
  void removeObserver(Observer o);
  void notifyObservers();
}
