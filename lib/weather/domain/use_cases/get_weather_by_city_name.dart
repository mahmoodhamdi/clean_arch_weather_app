import 'package:clean_arch_weather_app/weather/domain/entites/weather.dart';
import 'package:clean_arch_weather_app/weather/domain/repository/weather_repository.dart';

class GetWeatherByCityName {
  final WeatherRepository weatherRepository;

  GetWeatherByCityName({required this.weatherRepository});

  Future<Weather> execute(String cityName) async =>
      await weatherRepository.getWeatherByCityName(cityName);
}
