import 'package:clean_arch_weather_app/weather/data/data_source/remote_data_source/remote_data_source.dart';
import 'package:clean_arch_weather_app/weather/domain/entites/weather.dart';
import 'package:clean_arch_weather_app/weather/domain/repository/weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final RemoteDataSource remoteDataSource;
  WeatherRepositoryImpl({required this.remoteDataSource});
  @override
  Future<Weather> getWeatherByCityName(String cityName) async {
    try {
      return await remoteDataSource.getWeather(cityName);
    } catch (e) {
      rethrow;
    }
  }
}
