import 'package:weather_app/routing/routing_data.dart';

extension StringExtension on String {
  RoutingData get routingData {
    final Uri uri = Uri.parse(this);

    print('query parameters: ${uri.queryParameters} path: ${uri.path}');

    return RoutingData(route: uri.path, query: uri.queryParameters);
  }
}
