import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weather.g.dart';

@JsonSerializable()
class Weather extends Equatable {
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'main')
  final String? main;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'icon')
  final String? icon;

  const Weather(this.id, this.main, this.description, this.icon);

  @override
  List<Object?> get props => [];

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherToJson(this);
}
