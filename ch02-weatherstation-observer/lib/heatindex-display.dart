import 'display-element.dart';
import 'observer.dart';
import 'weather-data.dart';

class HeatIndexDisplay implements Observer, DisplayElement {
  WeatherData _weatherData;
  double _temperature;
  double _humidity;

  HeatIndexDisplay(WeatherData wd) {
    this._weatherData = wd;
    this._weatherData.addObserver(this);
  }

  @override
  void display() {
    double index = this.computeHeatIndex(this._temperature, this._humidity);
    print('Heat index is ${index}.');
  }

  @override
  void update(double temperature, double humidity, double pressure) {
    this._temperature = temperature;
    this._humidity = humidity;
    this.display();
  }

  /// Source https://www.wickedlysmart.com/headfirstdesignpatterns/heatindex.txt
  double computeHeatIndex(double t, double rh) {
    double index = (16.923 +
            (0.185212 * t) +
            (5.37941 * rh) -
            (0.100254 * t * rh) +
            (0.00941695 * (t * t)) +
            (0.00728898 * (rh * rh)) +
            (0.000345372 * (t * t * rh)) -
            (0.000814971 * (t * rh * rh)) +
            (0.0000102102 * (t * t * rh * rh)) -
            (0.000038646 * (t * t * t)) +
            (0.0000291583 * (rh * rh * rh)) +
            (0.00000142721 * (t * t * t * rh)) +
            (0.000000197483 * (t * rh * rh * rh)) -
            (0.0000000218429 * (t * t * t * rh * rh)) +
            0.000000000843296 * (t * t * rh * rh * rh)) -
        (0.0000000000481975 * (t * t * t * rh * rh * rh));
    return index;
  }
}
