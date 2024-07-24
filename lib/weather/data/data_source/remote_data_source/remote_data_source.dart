import 'package:clean_arch_weather_app/core/constants/api_constants.dart';
import 'package:clean_arch_weather_app/weather/data/models/weather_model.dart';
import 'package:dio/dio.dart';

abstract class RemoteDataSource {
  Future<WeatherModel> getWeather(String cityName);
}

class RemoteDataSourceImpl implements RemoteDataSource {
  @override
  Future<WeatherModel> getWeather(String cityName) async {
    try {
      var response = await Dio().get("${baseUrl}key=$apiKey&q=$cityName");

      return WeatherModel.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
