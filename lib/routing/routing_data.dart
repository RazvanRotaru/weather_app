class RoutingData {
  RoutingData({this.route, Map<String, String> query}) : _query = query;

  final String route;
  final Map<String, String> _query;

  String operator [](String key) => _query[key];
}
