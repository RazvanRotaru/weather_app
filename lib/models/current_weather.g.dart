// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CurrentWeather> _$currentWeatherSerializer = new _$CurrentWeatherSerializer();

class _$CurrentWeatherSerializer implements StructuredSerializer<CurrentWeather> {
  @override
  final Iterable<Type> types = const [CurrentWeather, _$CurrentWeather];
  @override
  final String wireName = 'CurrentWeather';

  @override
  Iterable<Object?> serialize(Serializers serializers, CurrentWeather object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'dt',
      serializers.serialize(object.time, specifiedType: const FullType(num)),
      'sunrise',
      serializers.serialize(object.sunriseTime, specifiedType: const FullType(num)),
      'sunset',
      serializers.serialize(object.sunsetTime, specifiedType: const FullType(num)),
      'temp',
      serializers.serialize(object.temp, specifiedType: const FullType(num)),
      'feels_like',
      serializers.serialize(object.feelsLike, specifiedType: const FullType(num)),
      'humidity',
      serializers.serialize(object.humidity, specifiedType: const FullType(num)),
      'dew_point',
      serializers.serialize(object.dewPoint, specifiedType: const FullType(num)),
      'uvi',
      serializers.serialize(object.uvi, specifiedType: const FullType(num)),
      'clouds',
      serializers.serialize(object.clouds, specifiedType: const FullType(num)),
      'visibility',
      serializers.serialize(object.visibility, specifiedType: const FullType(num)),
      'wind_speed',
      serializers.serialize(object.windSpeed, specifiedType: const FullType(num)),
      'wind_deg',
      serializers.serialize(object.windDeg, specifiedType: const FullType(num)),
      'weather',
      serializers.serialize(object.weather, specifiedType: const FullType(BuiltList, const [const FullType(Weather)])),
    ];

    return result;
  }

  @override
  CurrentWeather deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CurrentWeatherBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'dt':
          result.time = serializers.deserialize(value, specifiedType: const FullType(num)) as num;
          break;
        case 'sunrise':
          result.sunriseTime = serializers.deserialize(value, specifiedType: const FullType(num)) as num;
          break;
        case 'sunset':
          result.sunsetTime = serializers.deserialize(value, specifiedType: const FullType(num)) as num;
          break;
        case 'temp':
          result.temp = serializers.deserialize(value, specifiedType: const FullType(num)) as num;
          break;
        case 'feels_like':
          result.feelsLike = serializers.deserialize(value, specifiedType: const FullType(num)) as num;
          break;
        case 'humidity':
          result.humidity = serializers.deserialize(value, specifiedType: const FullType(num)) as num;
          break;
        case 'dew_point':
          result.dewPoint = serializers.deserialize(value, specifiedType: const FullType(num)) as num;
          break;
        case 'uvi':
          result.uvi = serializers.deserialize(value, specifiedType: const FullType(num)) as num;
          break;
        case 'clouds':
          result.clouds = serializers.deserialize(value, specifiedType: const FullType(num)) as num;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value, specifiedType: const FullType(num)) as num;
          break;
        case 'wind_speed':
          result.windSpeed = serializers.deserialize(value, specifiedType: const FullType(num)) as num;
          break;
        case 'wind_deg':
          result.windDeg = serializers.deserialize(value, specifiedType: const FullType(num)) as num;
          break;
        case 'weather':
          result.weather.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [const FullType(Weather)]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$CurrentWeather extends CurrentWeather {
  @override
  final num time;
  @override
  final num sunriseTime;
  @override
  final num sunsetTime;
  @override
  final num temp;
  @override
  final num feelsLike;
  @override
  final num humidity;
  @override
  final num dewPoint;
  @override
  final num uvi;
  @override
  final num clouds;
  @override
  final num visibility;
  @override
  final num windSpeed;
  @override
  final num windDeg;
  @override
  final BuiltList<Weather> weather;

  factory _$CurrentWeather([void Function(CurrentWeatherBuilder)? updates]) =>
      (new CurrentWeatherBuilder()..update(updates)).build();

  _$CurrentWeather._(
      {required this.time,
      required this.sunriseTime,
      required this.sunsetTime,
      required this.temp,
      required this.feelsLike,
      required this.humidity,
      required this.dewPoint,
      required this.uvi,
      required this.clouds,
      required this.visibility,
      required this.windSpeed,
      required this.windDeg,
      required this.weather})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(time, 'CurrentWeather', 'time');
    BuiltValueNullFieldError.checkNotNull(sunriseTime, 'CurrentWeather', 'sunriseTime');
    BuiltValueNullFieldError.checkNotNull(sunsetTime, 'CurrentWeather', 'sunsetTime');
    BuiltValueNullFieldError.checkNotNull(temp, 'CurrentWeather', 'temp');
    BuiltValueNullFieldError.checkNotNull(feelsLike, 'CurrentWeather', 'feelsLike');
    BuiltValueNullFieldError.checkNotNull(humidity, 'CurrentWeather', 'humidity');
    BuiltValueNullFieldError.checkNotNull(dewPoint, 'CurrentWeather', 'dewPoint');
    BuiltValueNullFieldError.checkNotNull(uvi, 'CurrentWeather', 'uvi');
    BuiltValueNullFieldError.checkNotNull(clouds, 'CurrentWeather', 'clouds');
    BuiltValueNullFieldError.checkNotNull(visibility, 'CurrentWeather', 'visibility');
    BuiltValueNullFieldError.checkNotNull(windSpeed, 'CurrentWeather', 'windSpeed');
    BuiltValueNullFieldError.checkNotNull(windDeg, 'CurrentWeather', 'windDeg');
    BuiltValueNullFieldError.checkNotNull(weather, 'CurrentWeather', 'weather');
  }

  @override
  CurrentWeather rebuild(void Function(CurrentWeatherBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  CurrentWeatherBuilder toBuilder() => new CurrentWeatherBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CurrentWeather &&
        time == other.time &&
        sunriseTime == other.sunriseTime &&
        sunsetTime == other.sunsetTime &&
        temp == other.temp &&
        feelsLike == other.feelsLike &&
        humidity == other.humidity &&
        dewPoint == other.dewPoint &&
        uvi == other.uvi &&
        clouds == other.clouds &&
        visibility == other.visibility &&
        windSpeed == other.windSpeed &&
        windDeg == other.windDeg &&
        weather == other.weather;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc($jc($jc(0, time.hashCode), sunriseTime.hashCode), sunsetTime.hashCode),
                                            temp.hashCode),
                                        feelsLike.hashCode),
                                    humidity.hashCode),
                                dewPoint.hashCode),
                            uvi.hashCode),
                        clouds.hashCode),
                    visibility.hashCode),
                windSpeed.hashCode),
            windDeg.hashCode),
        weather.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CurrentWeather')
          ..add('time', time)
          ..add('sunriseTime', sunriseTime)
          ..add('sunsetTime', sunsetTime)
          ..add('temp', temp)
          ..add('feelsLike', feelsLike)
          ..add('humidity', humidity)
          ..add('dewPoint', dewPoint)
          ..add('uvi', uvi)
          ..add('clouds', clouds)
          ..add('visibility', visibility)
          ..add('windSpeed', windSpeed)
          ..add('windDeg', windDeg)
          ..add('weather', weather))
        .toString();
  }
}

class CurrentWeatherBuilder implements Builder<CurrentWeather, CurrentWeatherBuilder> {
  _$CurrentWeather? _$v;

  num? _time;
  num? get time => _$this._time;
  set time(num? time) => _$this._time = time;

  num? _sunriseTime;
  num? get sunriseTime => _$this._sunriseTime;
  set sunriseTime(num? sunriseTime) => _$this._sunriseTime = sunriseTime;

  num? _sunsetTime;
  num? get sunsetTime => _$this._sunsetTime;
  set sunsetTime(num? sunsetTime) => _$this._sunsetTime = sunsetTime;

  num? _temp;
  num? get temp => _$this._temp;
  set temp(num? temp) => _$this._temp = temp;

  num? _feelsLike;
  num? get feelsLike => _$this._feelsLike;
  set feelsLike(num? feelsLike) => _$this._feelsLike = feelsLike;

  num? _humidity;
  num? get humidity => _$this._humidity;
  set humidity(num? humidity) => _$this._humidity = humidity;

  num? _dewPoint;
  num? get dewPoint => _$this._dewPoint;
  set dewPoint(num? dewPoint) => _$this._dewPoint = dewPoint;

  num? _uvi;
  num? get uvi => _$this._uvi;
  set uvi(num? uvi) => _$this._uvi = uvi;

  num? _clouds;
  num? get clouds => _$this._clouds;
  set clouds(num? clouds) => _$this._clouds = clouds;

  num? _visibility;
  num? get visibility => _$this._visibility;
  set visibility(num? visibility) => _$this._visibility = visibility;

  num? _windSpeed;
  num? get windSpeed => _$this._windSpeed;
  set windSpeed(num? windSpeed) => _$this._windSpeed = windSpeed;

  num? _windDeg;
  num? get windDeg => _$this._windDeg;
  set windDeg(num? windDeg) => _$this._windDeg = windDeg;

  ListBuilder<Weather>? _weather;
  ListBuilder<Weather> get weather => _$this._weather ??= new ListBuilder<Weather>();
  set weather(ListBuilder<Weather>? weather) => _$this._weather = weather;

  CurrentWeatherBuilder();

  CurrentWeatherBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _time = $v.time;
      _sunriseTime = $v.sunriseTime;
      _sunsetTime = $v.sunsetTime;
      _temp = $v.temp;
      _feelsLike = $v.feelsLike;
      _humidity = $v.humidity;
      _dewPoint = $v.dewPoint;
      _uvi = $v.uvi;
      _clouds = $v.clouds;
      _visibility = $v.visibility;
      _windSpeed = $v.windSpeed;
      _windDeg = $v.windDeg;
      _weather = $v.weather.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CurrentWeather other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CurrentWeather;
  }

  @override
  void update(void Function(CurrentWeatherBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CurrentWeather build() {
    _$CurrentWeather _$result;
    try {
      _$result = _$v ??
          new _$CurrentWeather._(
              time: BuiltValueNullFieldError.checkNotNull(time, 'CurrentWeather', 'time'),
              sunriseTime: BuiltValueNullFieldError.checkNotNull(sunriseTime, 'CurrentWeather', 'sunriseTime'),
              sunsetTime: BuiltValueNullFieldError.checkNotNull(sunsetTime, 'CurrentWeather', 'sunsetTime'),
              temp: BuiltValueNullFieldError.checkNotNull(temp, 'CurrentWeather', 'temp'),
              feelsLike: BuiltValueNullFieldError.checkNotNull(feelsLike, 'CurrentWeather', 'feelsLike'),
              humidity: BuiltValueNullFieldError.checkNotNull(humidity, 'CurrentWeather', 'humidity'),
              dewPoint: BuiltValueNullFieldError.checkNotNull(dewPoint, 'CurrentWeather', 'dewPoint'),
              uvi: BuiltValueNullFieldError.checkNotNull(uvi, 'CurrentWeather', 'uvi'),
              clouds: BuiltValueNullFieldError.checkNotNull(clouds, 'CurrentWeather', 'clouds'),
              visibility: BuiltValueNullFieldError.checkNotNull(visibility, 'CurrentWeather', 'visibility'),
              windSpeed: BuiltValueNullFieldError.checkNotNull(windSpeed, 'CurrentWeather', 'windSpeed'),
              windDeg: BuiltValueNullFieldError.checkNotNull(windDeg, 'CurrentWeather', 'windDeg'),
              weather: weather.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'weather';
        weather.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('CurrentWeather', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
