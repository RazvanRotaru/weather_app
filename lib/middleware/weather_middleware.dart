import 'package:redux/redux.dart';
import 'package:weather_app/actions/get_current_weather.dart';
import 'package:weather_app/actions/get_location.dart';
import 'package:weather_app/data/weather_api.dart';
import 'package:weather_app/models/app_state.dart';
import 'package:weather_app/models/current_weather.dart';
import 'package:weather_app/secrets.dart';

class WeatherMiddleware {
  WeatherMiddleware({required WeatherApi api}) : _api = api;
  final WeatherApi _api;

  List<Middleware<AppState>> get middleware {
    return <Middleware<AppState>>[
      TypedMiddleware<AppState, GetCurrentWeatherAction>(_getWeather),
    ];
  }

  Future<void> _getWeather(Store<AppState> store, GetCurrentWeatherAction action, NextDispatcher next) async {
    next(action);

    try {
      if (store.state.location == null) {
        store.dispatch(GetLocationAction());
        print('nu era locatie');
        await Future<int>.delayed(Duration(seconds: timeout));
      }

      final CurrentWeather weather = await _api.getCurrentWeather(store.state.location!.lat, store.state.location!.lon);
      store.dispatch(GetCurrentWeatherSuccessful(weather));
    } catch (error) {
      store.dispatch(GetCurrentWeatherError(error));
    }
  }
}
