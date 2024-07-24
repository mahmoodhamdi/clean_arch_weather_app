import 'package:clean_arch_weather_app/weather/domain/entites/weather.dart';

class WeatherModel extends Weather {
  WeatherModel(
      {required super.cityName,
      required super.humidity,
      required super.temperature,
      required super.description,
      required super.icon,
      required super.time,
      required super.date});

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      cityName: json['location']['name'],
      humidity: json['current']['humidity'],
      temperature: json['current']['temp_c'],
      description: json['current']['condition']['text'],
      icon: json['current']['condition']['icon'],
      date: DateTime.parse(json['current']['last_updated'])
          .toLocal()
          .toString()
          .substring(0, 11),
      time: DateTime.parse(json['current']['last_updated'])
          .toLocal()
          .toString()
          .substring(
            11,
            19,
          ),
    );
  }
}
