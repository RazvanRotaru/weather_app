import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:weather_app/models/current_weather.dart';
import 'package:weather_app/models/location.dart';
import 'package:weather_app/models/weather.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[
  Location,
  Weather,
  CurrentWeather,
])
Serializers serializers = (_$serializers.toBuilder() //
      ..addPlugin(StandardJsonPlugin()))
    .build();
