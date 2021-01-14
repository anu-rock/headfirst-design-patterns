import 'display-element.dart';
import 'observer.dart';
import 'weather-data.dart';

class CurrentConditionsDisplay implements Observer, DisplayElement {
  WeatherData _weatherData;
  double _temperature;
  double _humidity;

  CurrentConditionsDisplay(WeatherData wd) {
    this._weatherData = wd;
    this._weatherData.addObserver(this);
  }

  @override
  void display() {
    print(
        'Current temperature is $_temperature °C. Current humidity is $_humidity %.');
  }

  @override
  void update() {
    this._temperature = this._weatherData.temperature;
    this._humidity = this._weatherData.humidity;
    this.display();
  }
}
