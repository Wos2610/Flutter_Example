import 'package:freezed_annotation/freezed_annotation.dart';

import '../login/data.dart';
import '../login/status.dart';
part 'failure_sign_up_response.freezed.dart';
part 'failure_sign_up_response.g.dart';

@freezed
@JsonSerializable(explicitToJson: true)
class FailureSignUpResponse with _$FailureSignUpResponse {
  const factory FailureSignUpResponse({
    required Status status,
    required Data data,
  }) = _FailureLoginResponse;

  factory FailureSignUpResponse.fromJson(Map<String, dynamic> json) => _$FailureSignUpResponseFromJson(json);
}