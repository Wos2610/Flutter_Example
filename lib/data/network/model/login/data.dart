import 'package:freezed_annotation/freezed_annotation.dart';
part 'data.freezed.dart';
part 'data.g.dart';

@freezed
@JsonSerializable()
class Data with _$Data {
  const factory Data() = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}