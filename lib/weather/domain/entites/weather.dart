class Weather {
  final String cityName;
  final String time;
  final String icon;
  final String description;
  final num humidity;
  final num temperature;

  Weather(
      {required this.cityName,
      required this.humidity,
      required this.time,
      required this.icon,
      required this.description,
      required this.temperature});
}
