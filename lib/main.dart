import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/locator.dart';
import 'package:weather_app/routing/generate_route.dart';
import 'package:weather_app/view/home_page.dart';
import 'locator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      // theme: ThemeData.dark(),
      navigatorKey: navigationService.navigatorKey,
      onGenerateRoute: generateRoute,
    );
  }
}
