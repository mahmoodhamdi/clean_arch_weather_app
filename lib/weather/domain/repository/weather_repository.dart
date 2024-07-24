import 'package:clean_arch_weather_app/weather/domain/entites/weather.dart';

abstract class WeatherRepository {
  Future<Weather> getWeatherByCityName(String cityName);
}
