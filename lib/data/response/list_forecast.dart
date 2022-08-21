import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:test_weather/data/response/forecast.dart';

part 'list_forecast.g.dart';

@JsonSerializable()
class ListForecast extends Equatable {
  @JsonKey(name: 'list')
  final List<Forecast>? list;

  const ListForecast(this.list);

  @override
  List<Object?> get props => [];

  factory ListForecast.fromJson(Map<String, dynamic> json) =>
      _$ListForecastFromJson(json);

  Map<String, dynamic> toJson() => _$ListForecastToJson(this);
}
