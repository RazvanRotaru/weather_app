import 'dart:convert';

import 'package:http/http.dart';
import 'package:weather_app/data/http_client.dart';
import 'package:weather_app/models/current_weather.dart';
import 'package:weather_app/secrets.dart';

class WeatherApi {
  WeatherApi({this.url = 'https://api.openweathermap.org/data/2.5/onecall'}) : _client = HttpClient.global;

  final String url;
  final Client _client;

  Future<CurrentWeather> getCurrentWeather(num lat, num lon) async {
    final Uri uri = Uri.parse('$url?lat=$lat&lon=$lon&exclude=minutely,hourly,daily,daily,alerts&appid=$key');
    final Response resp = await _client.get(uri);

    if (resp.statusCode >= 400) {
      throw StateError('Unsuccessful connection: ${resp.body}');
    }

    // await Future<int>.delayed(const Duration(seconds: 2));

    final Map<String, dynamic> body = jsonDecode(resp.body) as Map<String, dynamic>;
    final Map<String, dynamic> weather = body['current'] as Map<String, dynamic>;

    return CurrentWeather.fromJson(weather);
  }
}
