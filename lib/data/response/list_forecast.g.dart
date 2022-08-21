// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListForecast _$ListForecastFromJson(Map<String, dynamic> json) => ListForecast(
      (json['list'] as List<dynamic>?)
          ?.map((e) => Forecast.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListForecastToJson(ListForecast instance) =>
    <String, dynamic>{
      'list': instance.list,
    };
