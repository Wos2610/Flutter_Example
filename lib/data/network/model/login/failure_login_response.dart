
import 'package:dio_example/data/network/model/login/status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';


part 'failure_login_response.freezed.dart';
part 'failure_login_response.g.dart';

@freezed
@JsonSerializable(explicitToJson: true)
class FailureLoginResponse with _$FailureLoginResponse {
  const factory FailureLoginResponse({
    required Status status,
  }) = _FailureLoginResponse;

  factory FailureLoginResponse.fromJson(Map<String, dynamic> json) => _$FailureLoginResponseFromJson(json);
}
