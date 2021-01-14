import 'display-element.dart';
import 'observer.dart';
import 'weather-data.dart';

class StatsDisplay implements Observer, DisplayElement {
  WeatherData _weatherData;
  double _temperature;
  double _humidity;
  double _pressure;

  StatsDisplay(WeatherData wd) {
    this._weatherData = wd;
    this._weatherData.addObserver(this);
  }

  @override
  void display() {
    print(
        'Avg temperature is $_temperature °C. Avg humidity is $_humidity %. Avg pressure is $_pressure Pa.');
  }

  @override
  void update() {
    this._temperature = this._weatherData.temperature;
    this._humidity = this._weatherData.humidity;
    this._pressure = this._weatherData.pressure;
    this.display();
  }
}
