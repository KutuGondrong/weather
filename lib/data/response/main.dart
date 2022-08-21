import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'main.g.dart';

@JsonSerializable()
class Main extends Equatable {
  @JsonKey(name: 'temp')
  final double? temp;
  @JsonKey(name: 'feels_like')
  final double? feelsLike;
  @JsonKey(name: 'temp_min')
  final double? tempMin;
  @JsonKey(name: 'temp_max')
  final double? tempMax;
  @JsonKey(name: 'pressure')
  final int? pressure;
  @JsonKey(name: 'sea_level')
  final int? seaLevel;
  @JsonKey(name: 'grnd_level')
  final int? grndLevel;
  @JsonKey(name: 'humidity')
  final int? humidity;
  @JsonKey(name: 'temp_kf')
  final double? tempKf;

  const Main(this.temp, this.feelsLike, this.tempMin, this.tempMax,
      this.pressure, this.seaLevel, this.grndLevel, this.humidity, this.tempKf);

  @override
  List<Object?> get props => [temp];

  factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);

  Map<String, dynamic> toJson() => _$MainToJson(this);
}
