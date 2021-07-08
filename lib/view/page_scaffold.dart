import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:weather_app/actions/get_current_weather.dart';
import 'package:weather_app/actions/get_location.dart';
import 'package:weather_app/models/app_state.dart';

class PageScaffold extends StatelessWidget {
  const PageScaffold({Key? key, required this.body, required this.index, required this.title}) : super(key: key);

  final Widget body;
  final int index;
  final String title;

  static List<String> tabs = <String>[
    '/',
    '/location',
    '/weather',
  ];

  static List<dynamic> actions = <dynamic>[
    Object(),
    GetLocationAction(),
    GetCurrentWeatherAction(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(title),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          final Store<AppState> store = StoreProvider.of<AppState>(context);
          store.dispatch(actions[index]);
          Navigator.pushNamed(context, tabs[index]);
        },
        currentIndex: index,
        showSelectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_city),
            label: 'Location',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wb_sunny),
            label: 'Weather',
          ),
        ],
      ),
      body: body,
    );
  }
}
