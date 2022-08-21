import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'rain.g.dart';

@JsonSerializable()
class Rain extends Equatable {
  @JsonKey(name: '3h')
  final double? threeH;

  const Rain(this.threeH);

  @override
  List<Object?> get props => [];

  factory Rain.fromJson(Map<String, dynamic> json) => _$RainFromJson(json);

  Map<String, dynamic> toJson() => _$RainToJson(this);
}
