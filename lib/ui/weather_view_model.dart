import 'package:flutter/foundation.dart';

import '../data/data_source/open_weather_api_imple.dart';
import '../data/model/weather.dart';
import '../data/repository/weather_repository.dart';

class WeatherViewModel extends ChangeNotifier {
  final _weatherRepository = WeatherRepository(OpenWeatherApiImpl());
  Weather myWeather = const Weather(weather: '', cityName: '', icon: '', temp: 0);
  bool isLoading = true;

  WeatherViewModel() {
    fetchWeatherInfo('seoul');
  }

  void fetchWeatherInfo(String query) async {
    isLoading = true;
    notifyListeners();
    myWeather = await _weatherRepository.getWeatherInfo(query);
    isLoading = false;
    notifyListeners();
  }

  String convertTemp(num F) {
    return (F - 273.15).toStringAsFixed(1);
  }
}