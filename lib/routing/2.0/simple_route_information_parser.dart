import 'package:flutter/cupertino.dart';
import 'package:weather_app/routing/2.0/simple_route_path.dart';

class SimpleRouteInformationParser extends RouteInformationParser<SimpleRoutePath> {
  @override
  Future<SimpleRoutePath> parseRouteInformation(RouteInformation routeInformation) async {
    final Uri uri = Uri.parse(routeInformation.location!);

    if (uri.pathSegments.isNotEmpty && uri.pathSegments.first == 'echo') {
      return EchoPath(uri.queryParameters['text']);
    }
    return HomePath();
  }

  @override
  RouteInformation? restoreRouteInformation(SimpleRoutePath configuration) {
    if (configuration is HomePath) {
      return const RouteInformation(location: '/');
    }
    if (configuration is EchoPath) {
      return RouteInformation(location: '/echo?text=${configuration.text}');
    }

    return null;
  }
}
