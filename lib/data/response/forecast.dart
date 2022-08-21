import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:test_weather/data/response/clouds.dart';
import 'package:test_weather/data/response/main.dart';
import 'package:test_weather/data/response/rain.dart';
import 'package:test_weather/data/response/sys.dart';
import 'package:test_weather/data/response/weather.dart';
import 'package:test_weather/data/response/wind.dart';

part 'forecast.g.dart';

@JsonSerializable()
class Forecast extends Equatable {
  @JsonKey(name: 'dt')
  final int? dt;
  @JsonKey(name: 'main')
  final Main? main;
  @JsonKey(name: 'weather')
  final List<Weather>? weather;
  @JsonKey(name: 'clouds')
  final Clouds? clouds;
  @JsonKey(name: 'wind')
  final Wind? wind;
  @JsonKey(name: 'visibility')
  final int? visibility;
  @JsonKey(name: 'pop')
  final double? pop;
  @JsonKey(name: 'rain')
  final Rain? rain;
  @JsonKey(name: 'sys')
  final Sys? sys;
  @JsonKey(name: 'dt_txt')
  final String? dtTxt;

  const Forecast(this.dt, this.main, this.weather, this.clouds, this.wind,
      this.visibility, this.pop, this.rain, this.sys, this.dtTxt);

  @override
  List<Object?> get props => [];

  factory Forecast.fromJson(Map<String, dynamic> json) =>
      _$ForecastFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastToJson(this);

  String get fullUrlImage {
    try {
      String image =
          'http://openweathermap.org/img/wn/${weather?.first.icon}@2x.png';
      return image;
    } catch (e) {
      return '';
    }
  }

  Weather? get firstWeather {
    try {
      return weather?.first;
    } catch (e) {
      return null;
    }
  }
}
