import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:weather_app/actions/get_location.dart';
import 'package:weather_app/data/location_api.dart';
import 'package:weather_app/data/weather_api.dart';
import 'package:weather_app/locator.dart';
import 'package:weather_app/middleware/location_middleware.dart';
import 'package:weather_app/middleware/weather_middleware.dart';
import 'package:weather_app/redux/redux.dart';
import 'package:weather_app/routing/generate_route.dart';
import 'package:weather_app/view/home_page.dart';
import 'locator.dart';

import 'models/app_state.dart';

void main() {
  final LocationApi locationApi = LocationApi();
  final LocationMiddleware locationMiddleware = LocationMiddleware(api: locationApi);

  final WeatherApi weatherApi = WeatherApi();
  final WeatherMiddleware weatherMiddleware = WeatherMiddleware(api: weatherApi);

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: AppState(),
    middleware: locationMiddleware.middleware + weatherMiddleware.middleware,
  );

  store.dispatch(GetLocationAction());
  runApp(MyApp(
    store: store,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.store}) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        home: const HomePage(),
        // theme: ThemeData.dark(),
        navigatorKey: navigationService.navigatorKey,
        onGenerateRoute: generateRoute,
      ),
    );
  }
}
