// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'failure_sign_up_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************


_$FailureLoginResponseImpl _$$FailureLoginResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FailureLoginResponseImpl(
      status: Status.fromJson(json['status'] as Map<String, dynamic>),
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FailureLoginResponseImplToJson(
        _$FailureLoginResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
