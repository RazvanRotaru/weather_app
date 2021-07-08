import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:weather_app/models/app_state.dart';
import 'package:weather_app/models/current_weather.dart';

class WeatherContainer extends StatelessWidget {
  const WeatherContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<CurrentWeather?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, CurrentWeather?>(
      converter: (Store<AppState> store) {
        return store.state.currentWeather;
      },
      builder: builder,
    );
  }
}
