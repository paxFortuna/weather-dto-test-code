import 'weather_dto.dart';

abstract class OpenWeatherApi {
  Future<WeatherDto> getWeatherInfo(String query);
}