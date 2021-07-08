import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:weather_app/actions/get_current_weather.dart';
import 'package:weather_app/actions/get_location.dart';
import 'package:weather_app/models/app_state.dart';
import 'package:weather_app/view/page_scaffold.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      index: 0,
      title: 'Home',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          MaterialButton(
            onPressed: () {
              final Store<AppState> store = StoreProvider.of<AppState>(context);
              store.dispatch(GetLocationAction());
              Navigator.pushNamed(context, '/location');
            },
            child: const Text('Get Location'),
          ),
          MaterialButton(
            onPressed: () {
              final Store<AppState> store = StoreProvider.of<AppState>(context);
              store.dispatch(GetCurrentWeatherAction());
              Navigator.pushNamed(context, '/weather');
            },
            child: const Text('Get Weather'),
          ),
        ],
      ),
    );
  }
}
