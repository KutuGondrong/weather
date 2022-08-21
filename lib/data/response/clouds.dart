import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'clouds.g.dart';

@JsonSerializable()
class Clouds extends Equatable {
  @JsonKey(name: 'all')
  final int? all;

  const Clouds(this.all);

  @override
  List<Object?> get props => [all];

  factory Clouds.fromJson(Map<String, dynamic> json) => _$CloudsFromJson(json);

  Map<String, dynamic> toJson() => _$CloudsToJson(this);
}
