import 'package:flutter/material.dart';
import 'package:weather_app/routing/routing_data.dart';
import 'package:weather_app/routing/string_extensions.dart';
import 'package:weather_app/view/echo_page.dart';
import 'package:weather_app/view/home_page.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  final RoutingData routingData = routeData(settings.name);

  switch (routingData.route) {
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
