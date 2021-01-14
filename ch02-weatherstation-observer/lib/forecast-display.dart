import 'display-element.dart';
import 'observer.dart';
import 'weather-data.dart';

class ForecastDisplay implements Observer, DisplayElement {
  WeatherData _weatherData;
  double _lastPressure;
  double _currentPressure;

  ForecastDisplay(WeatherData wd) {
    this._weatherData = wd;
    this._weatherData.addObserver(this);
  }

  @override
  void display() {
    print(
        'Last pressure was $_lastPressure Pa. Current pressure is $_currentPressure Pa.');
  }

  @override
  void update() {
    this._lastPressure = this._currentPressure;
    this._currentPressure = this._weatherData.pressure;
    this.display();
  }
}
