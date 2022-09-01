// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Weather _$$_WeatherFromJson(Map<String, dynamic> json) => _$_Weather(
      weather: json['weather'] as String,
      cityName: json['cityName'] as String,
      icon: json['icon'] as String,
      temp: json['temp'] as num,
    );

Map<String, dynamic> _$$_WeatherToJson(_$_Weather instance) =>
    <String, dynamic>{
      'weather': instance.weather,
      'cityName': instance.cityName,
      'icon': instance.icon,
      'temp': instance.temp,
    };
