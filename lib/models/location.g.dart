// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Location> _$locationSerializer = new _$LocationSerializer();

class _$LocationSerializer implements StructuredSerializer<Location> {
  @override
  final Iterable<Type> types = const [Location, _$Location];
  @override
  final String wireName = 'Location';

  @override
  Iterable<Object?> serialize(Serializers serializers, Location object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'lat',
      serializers.serialize(object.lat, specifiedType: const FullType(num)),
      'lon',
      serializers.serialize(object.lon, specifiedType: const FullType(num)),
    ];
    Object? value;
    value = object.country;
    if (value != null) {
      result..add('country')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    value = object.countryCode;
    if (value != null) {
      result..add('country_code')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    value = object.region;
    if (value != null) {
      result..add('region')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    value = object.regionName;
    if (value != null) {
      result..add('region_name')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    value = object.city;
    if (value != null) {
      result..add('city')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    value = object.zip;
    if (value != null) {
      result..add('zip')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    value = object.timezone;
    if (value != null) {
      result..add('timezone')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    value = object.isp;
    if (value != null) {
      result..add('isp')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    value = object.querry;
    if (value != null) {
      result..add('querry')..add(serializers.serialize(value, specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Location deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'country':
          result.country = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
        case 'country_code':
          result.countryCode = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
        case 'region':
          result.region = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
        case 'region_name':
          result.regionName = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
        case 'city':
          result.city = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
        case 'zip':
          result.zip = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
        case 'lat':
          result.lat = serializers.deserialize(value, specifiedType: const FullType(num)) as num;
          break;
        case 'lon':
          result.lon = serializers.deserialize(value, specifiedType: const FullType(num)) as num;
          break;
        case 'timezone':
          result.timezone = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
        case 'isp':
          result.isp = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
        case 'querry':
          result.querry = serializers.deserialize(value, specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Location extends Location {
  @override
  final String? country;
  @override
  final String? countryCode;
  @override
  final String? region;
  @override
  final String? regionName;
  @override
  final String? city;
  @override
  final String? zip;
  @override
  final num lat;
  @override
  final num lon;
  @override
  final String? timezone;
  @override
  final String? isp;
  @override
  final String? querry;

  factory _$Location([void Function(LocationBuilder)? updates]) => (new LocationBuilder()..update(updates)).build();

  _$Location._(
      {this.country,
      this.countryCode,
      this.region,
      this.regionName,
      this.city,
      this.zip,
      required this.lat,
      required this.lon,
      this.timezone,
      this.isp,
      this.querry})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(lat, 'Location', 'lat');
    BuiltValueNullFieldError.checkNotNull(lon, 'Location', 'lon');
  }

  @override
  Location rebuild(void Function(LocationBuilder) updates) => (toBuilder()..update(updates)).build();

  @override
  LocationBuilder toBuilder() => new LocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Location &&
        country == other.country &&
        countryCode == other.countryCode &&
        region == other.region &&
        regionName == other.regionName &&
        city == other.city &&
        zip == other.zip &&
        lat == other.lat &&
        lon == other.lon &&
        timezone == other.timezone &&
        isp == other.isp &&
        querry == other.querry;
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
                                $jc($jc($jc($jc(0, country.hashCode), countryCode.hashCode), region.hashCode),
                                    regionName.hashCode),
                                city.hashCode),
                            zip.hashCode),
                        lat.hashCode),
                    lon.hashCode),
                timezone.hashCode),
            isp.hashCode),
        querry.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Location')
          ..add('country', country)
          ..add('countryCode', countryCode)
          ..add('region', region)
          ..add('regionName', regionName)
          ..add('city', city)
          ..add('zip', zip)
          ..add('lat', lat)
          ..add('lon', lon)
          ..add('timezone', timezone)
          ..add('isp', isp)
          ..add('querry', querry))
        .toString();
  }
}

class LocationBuilder implements Builder<Location, LocationBuilder> {
  _$Location? _$v;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _countryCode;
  String? get countryCode => _$this._countryCode;
  set countryCode(String? countryCode) => _$this._countryCode = countryCode;

  String? _region;
  String? get region => _$this._region;
  set region(String? region) => _$this._region = region;

  String? _regionName;
  String? get regionName => _$this._regionName;
  set regionName(String? regionName) => _$this._regionName = regionName;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _zip;
  String? get zip => _$this._zip;
  set zip(String? zip) => _$this._zip = zip;

  num? _lat;
  num? get lat => _$this._lat;
  set lat(num? lat) => _$this._lat = lat;

  num? _lon;
  num? get lon => _$this._lon;
  set lon(num? lon) => _$this._lon = lon;

  String? _timezone;
  String? get timezone => _$this._timezone;
  set timezone(String? timezone) => _$this._timezone = timezone;

  String? _isp;
  String? get isp => _$this._isp;
  set isp(String? isp) => _$this._isp = isp;

  String? _querry;
  String? get querry => _$this._querry;
  set querry(String? querry) => _$this._querry = querry;

  LocationBuilder();

  LocationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _country = $v.country;
      _countryCode = $v.countryCode;
      _region = $v.region;
      _regionName = $v.regionName;
      _city = $v.city;
      _zip = $v.zip;
      _lat = $v.lat;
      _lon = $v.lon;
      _timezone = $v.timezone;
      _isp = $v.isp;
      _querry = $v.querry;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Location other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Location;
  }

  @override
  void update(void Function(LocationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Location build() {
    final _$result = _$v ??
        new _$Location._(
            country: country,
            countryCode: countryCode,
            region: region,
            regionName: regionName,
            city: city,
            zip: zip,
            lat: BuiltValueNullFieldError.checkNotNull(lat, 'Location', 'lat'),
            lon: BuiltValueNullFieldError.checkNotNull(lon, 'Location', 'lon'),
            timezone: timezone,
            isp: isp,
            querry: querry);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
