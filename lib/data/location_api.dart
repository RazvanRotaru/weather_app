import 'dart:convert';

import 'package:http/http.dart';
import 'package:weather_app/data/http_client.dart';
import 'package:weather_app/models/location.dart';

class LocationApi {
  LocationApi({this.url = 'http://ip-api.com/json/?fields=58367'}) : _client = HttpClient.global;

  final String url;
  final Client _client;

  Future<Location> getLocation() async {
    final Uri uri = Uri.parse(url);
    final Response resp = await _client.get(uri);

    if (resp.statusCode >= 400) {
      throw StateError('Unsuccessful connection: ${resp.body}');
    }

    // await Future<int>.delayed(const Duration(seconds: 2));

    final Map<dynamic, dynamic> body = jsonDecode(resp.body) as Map<dynamic, dynamic>;

    return Location.fromJson(body);
  }
}
