import 'package:clean_arch_weather_app/weather/data/data_source/remote_data_source/remote_data_source.dart';
import 'package:clean_arch_weather_app/weather/data/repository/weather_repository_impl.dart';
import 'package:clean_arch_weather_app/weather/domain/repository/weather_repository.dart';
import 'package:clean_arch_weather_app/weather/domain/use_cases/get_weather_by_city_name.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

setupServiceLocator() {
  // Register all the needed services

  getIt.registerSingleton<RemoteDataSource>(RemoteDataSourceImpl());
  getIt.registerSingleton<WeatherRepository>(WeatherRepositoryImpl(
    remoteDataSource: getIt<RemoteDataSource>(),
  ));
  getIt.registerSingleton<GetWeatherByCityName>(GetWeatherByCityName(
    weatherRepository: getIt<WeatherRepository>(),
  ));
}
