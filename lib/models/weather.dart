import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather_app/models/serializers.dart';

part 'weather.g.dart';

abstract class Weather implements Built<Weather, WeatherBuilder> {
  factory Weather([void Function(WeatherBuilder)? updates]) = _$Weather;

  factory Weather.fromJson(dynamic json) {
    return serializers.deserializeWith(serializer, json)!;
  }

  Weather._();

  num get id;

  String get main;

  String get description;

  String get icon;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<Weather> get serializer => _$weatherSerializer;
}
