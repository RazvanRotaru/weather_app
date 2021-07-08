import 'package:weather_app/routing/routing_data.dart';

RoutingData routeData(String s) {
  final Uri uri = Uri.parse(s);

  print('query parameters: ${uri.queryParameters} path: ${uri.path}');

  return RoutingData(route: uri.path, query: uri.queryParameters);
}
