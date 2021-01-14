import 'lib/current-conditions-display.dart';
import 'lib/forecast-display.dart';
import 'lib/heatindex-display.dart';
import 'lib/stats-display.dart';
import 'lib/weather-data.dart';

void main() {
  WeatherData weatherData = WeatherData();
  CurrentConditionsDisplay currentConditionsDisplay =
      CurrentConditionsDisplay(weatherData);
  StatsDisplay statsDisplay = StatsDisplay(weatherData);
  ForecastDisplay forecastDisplay = ForecastDisplay(weatherData);
  HeatIndexDisplay heatIndexDisplay = HeatIndexDisplay(weatherData);

  weatherData.updateMeasurements(23.5, 82, 45);
  weatherData.updateMeasurements(27.3, 97, 56);
  weatherData.updateMeasurements(13.5, 67, 89);
}
