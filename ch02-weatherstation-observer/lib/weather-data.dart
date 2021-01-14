import 'observer.dart';
import 'subject.dart';

class WeatherData implements Subject {
  double _temperature;
  double _humidity;
  double _pressure;
  List<Observer> _observers;

  WeatherData() {
    this._observers = List<Observer>();
  }

  @override
  void addObserver(Observer o) {
    this._observers.add(o);
  }

  @override
  void removeObserver(Observer o) {
    this._observers.remove(o);
  }

  @override
  void notifyObservers() {
    this._observers.forEach((observer) {
      observer.update();
    });
  }

  void _measurementsChanged(double temp, double humidity, double pressure) {
    this._temperature = temp;
    this._humidity = humidity;
    this._pressure = pressure;
    this.notifyObservers();
  }

  /// This method when called (from another class) supposedly gets data
  /// from an online source. So, the values being passed as arguments
  /// will actually come from an API call rather than as arguments.
  void updateMeasurements(double temp, double humidity, double pressure) {
    this._measurementsChanged(temp, humidity, pressure);
  }

  double get temperature {
    return this._temperature;
  }

  double get humidity {
    return this._humidity;
  }

  double get pressure {
    return this._pressure;
  }
}
