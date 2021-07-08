import 'package:weather_app/models/current_weather.dart';

class GetCurrentWeatherAction {}

class GetCurrentWeatherSuccessful {
  GetCurrentWeatherSuccessful(this.weather);

  final CurrentWeather weather;

  @override
  String toString() {
    return 'GetCurrentWeatherSuccessful{weather: $weather}';
  }
}

class GetCurrentWeatherError {
  GetCurrentWeatherError(this.error);

  final Object error;

  @override
  String toString() {
    return 'GetCurrentWeatherError{error: $error}';
  }
}
