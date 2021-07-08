import 'package:flutter/material.dart';
import 'package:weather_app/routing/routing_data.dart';
import 'package:weather_app/view/echo_page.dart';
import 'package:weather_app/view/home_page.dart';
import 'package:weather_app/view/location_page.dart';
import 'package:weather_app/view/weather_page.dart';
import 'string_extensions.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  final RoutingData routingData = settings.name!.routingData;

  switch (routingData.route) {
    case '/location':
      return _getPageRoute(const LocationPage(), settings);
    case '/weather':
      return _getPageRoute(const WeatherPage(), settings);
    case '/echo':
      return _getPageRoute(EchoPage(text: routingData['text']), settings);
    default:
      return _getPageRoute(const HomePage(), settings);
  }
}

PageRoute<dynamic> _getPageRoute(Widget child, RouteSettings settings) {
  return PageRouteBuilder<dynamic>(
    settings: RouteSettings(name: settings.name),
    pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) => child,
  );
}
