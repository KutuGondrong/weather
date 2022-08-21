import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sys.g.dart';

@JsonSerializable()
class Sys extends Equatable {
  @JsonKey(name: 'pod')
  final String? pod;

  const Sys(this.pod);

  @override
  List<Object?> get props => [pod];

  factory Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);

  Map<String, dynamic> toJson() => _$SysToJson(this);
}
