import 'package:clean_arch_weather_app/core/di/service_locator.dart';
import 'package:clean_arch_weather_app/weather/domain/entites/weather.dart';
import 'package:clean_arch_weather_app/weather/domain/use_cases/get_weather_by_city_name.dart';
import 'package:flutter/material.dart';

void main() async {
  await setupServiceLocator();
  Weather weather = await getIt<GetWeatherByCityName>().execute("London");
  print("""
 
City: ${weather.cityName}
Temperature: ${weather.temperature.toString()}
Description: ${weather.description}
Humidity: ${weather.humidity}
Date: ${weather.date}
Time: ${weather.time}
Icon: ${weather.icon}
""");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Clean Arch Weather App',
      home: MyHomePage(title: 'Clean Arch Weather App'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'The results will be displayed in console',
            ),
          ],
        ),
      ),
    );
  }
}
