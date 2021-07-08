import 'package:redux/redux.dart';
import 'package:weather_app/actions/get_current_weather.dart';
import 'package:weather_app/actions/get_location.dart';
import 'package:weather_app/models/app_state.dart';

final Reducer<AppState> reducer = combineReducers(<Reducer<AppState>>[
  (AppState state, dynamic action) {
    print(action);
    return state;
  },
  TypedReducer<AppState, GetLocationAction>(_getLocation),
  TypedReducer<AppState, GetLocationSuccessful>(_getLocationSuccessful),
  TypedReducer<AppState, GetLocationError>(_getLocationError),
  TypedReducer<AppState, GetCurrentWeatherAction>(_getCurrentWeather),
  TypedReducer<AppState, GetCurrentWeatherSuccessful>(_getCurrentWeatherSuccessful),
  TypedReducer<AppState, GetCurrentWeatherError>(_getCurrentWeatherError),
]);

AppState _getLocation(AppState state, GetLocationAction action) {
  return state.rebuild((AppStateBuilder builder) {
    builder.isLoading = true;
  });
}

AppState _getLocationSuccessful(AppState state, GetLocationSuccessful action) {
  return state.rebuild((AppStateBuilder builder) {
    builder
      ..isLoading = false
      ..location.replace(action.location);
  });
}

AppState _getLocationError(AppState state, GetLocationError action) {
  return state.rebuild((AppStateBuilder builder) {
    builder
      ..isLoading = false
      ..errorMessage = '${action.error}';
  });
}

AppState _getCurrentWeather(AppState state, GetCurrentWeatherAction action) {
  return state.rebuild((AppStateBuilder builder) {
    builder.isLoading = true;
  });
}

AppState _getCurrentWeatherSuccessful(AppState state, GetCurrentWeatherSuccessful action) {
  return state.rebuild((AppStateBuilder builder) {
    builder
      ..isLoading = false
      ..currentWeather.replace(action.weather);
  });
}

AppState _getCurrentWeatherError(AppState state, GetCurrentWeatherError action) {
  return state.rebuild((AppStateBuilder builder) {
    builder
      ..isLoading = false
      ..errorMessage = '${action.error}';
  });
}
