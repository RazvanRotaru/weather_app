import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/routing/2.0/simple_route_information_parser.dart';
import 'package:weather_app/routing/2.0/simple_router_delegate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final SimpleRouterDelegate _routerDelegate = SimpleRouterDelegate();
  final SimpleRouteInformationParser _informationParser = SimpleRouteInformationParser();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Navigator 2.0 demo',
      routeInformationParser: _informationParser,
      routerDelegate: _routerDelegate,
    );
  }
}
