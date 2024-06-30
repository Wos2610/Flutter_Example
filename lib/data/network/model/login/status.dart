import 'package:freezed_annotation/freezed_annotation.dart';
part 'status.freezed.dart';
part 'status.g.dart';

@freezed
@JsonSerializable()
class Status with _$Status {
  const factory Status({
    required String code,
    required String message,
  }) = _Status;

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
}