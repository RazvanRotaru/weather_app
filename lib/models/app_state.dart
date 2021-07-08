import 'package:built_value/built_value.dart';
import 'package:weather_app/models/current_weather.dart';
import 'package:weather_app/models/location.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState() {
    return _$AppState((AppStateBuilder builder) {
      builder.isLoading = false;
    });
  }

  AppState._();

  // String? get country;
  //
  // String? get city;
  //
  // num? get lat;
  //
  // num? get lon;
  //
  // String? get timezone;
  //
  // num? get temperature;
  //
  // num? get humidity;
  //
  // num? get windSpeed;

  Location? get location;

  CurrentWeather? get currentWeather;

  String? get errorMessage;

  bool get isLoading;
}
