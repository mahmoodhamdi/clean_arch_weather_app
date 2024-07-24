# Weather App - Clean Architecture Practice

## Description

This Weather App is designed as a learning project to practice Clean Architecture principles and apply the Dependency Inversion principle from SOLID. The focus is on understanding and implementing Clean Architecture concepts rather than UI design or best practices for API handling.

## Features

- Fetches weather information by city name.
- Implements Clean Architecture principles.
- Applies Dependency Inversion principle from SOLID.

## Setup

### Prerequisites

- Flutter SDK
- Dart SDK

### Installing

1. Clone the repository:

    ```sh
    git clone https://github.com/mahmoodhamdi/clean_arch_weather_app.git
    ```

2. Navigate to the project directory:

    ```sh
    cd clean_arch_weather_app
    ```

3. Get the dependencies:

    ```sh
    flutter pub get
    ```

4. Set up your API key for the weather service in `RemoteDataSourceImpl`

### Running the App

```sh
flutter run
```

## Clean Architecture Layers

The app is structured into three main layers:

1. **Presentation Layer**: This layer contains the UI components, including widgets and state management logic.
2. **Domain Layer**: This layer includes the business logic of the application. It contains use cases, entities, and repository interfaces.
3. **Data Layer**: This layer is responsible for data handling. It includes implementations of the repository interfaces, data sources (remote and local), and models.

## Dependency Injection

The project uses GetIt for dependency injection. Services are registered in the `setupServiceLocator` function.

### Example Usage

The following code demonstrates how to use the `GetWeatherByCityName` use case:

```dart
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
```

## Learning Objectives

- Understand and implement Clean Architecture principles.
- Apply the Dependency Inversion principle from SOLID.
- Practice structuring a Flutter project for maintainability and scalability.
- Write clean, maintainable code.
- Implement Separation of Concerns (SOC).

## Resources

For more detailed guidance and examples, refer to the [Flutter Clean Architecture Course](https://www.udemy.com/course/flutter-clean-architecture-2022-flutter-3-in-arabic/) by [Usama Elgendy](https://github.com/usamaaelgendy).
