import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'wind.g.dart';

@JsonSerializable()
class Wind extends Equatable {
  @JsonKey(name: 'speed')
  final double? speed;
  @JsonKey(name: 'deg')
  final int? deg;
  @JsonKey(name: 'gust')
  final double? gust;

  const Wind(this.speed, this.deg, this.gust);

  @override
  List<Object?> get props => [speed];

  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);

  Map<String, dynamic> toJson() => _$WindToJson(this);
}
