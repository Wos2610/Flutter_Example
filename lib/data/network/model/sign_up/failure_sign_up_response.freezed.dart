// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure_sign_up_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FailureSignUpResponse _$FailureSignUpResponseFromJson(
    Map<String, dynamic> json) {
  return _FailureLoginResponse.fromJson(json);
}

/// @nodoc
mixin _$FailureSignUpResponse {
  Status get status => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FailureSignUpResponseCopyWith<FailureSignUpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureSignUpResponseCopyWith<$Res> {
  factory $FailureSignUpResponseCopyWith(FailureSignUpResponse value,
          $Res Function(FailureSignUpResponse) then) =
      _$FailureSignUpResponseCopyWithImpl<$Res, FailureSignUpResponse>;
  @useResult
  $Res call({Status status, Data data});

  $StatusCopyWith<$Res> get status;
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$FailureSignUpResponseCopyWithImpl<$Res,
        $Val extends FailureSignUpResponse>
    implements $FailureSignUpResponseCopyWith<$Res> {
  _$FailureSignUpResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get status {
    return $StatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FailureLoginResponseImplCopyWith<$Res>
    implements $FailureSignUpResponseCopyWith<$Res> {
  factory _$$FailureLoginResponseImplCopyWith(_$FailureLoginResponseImpl value,
          $Res Function(_$FailureLoginResponseImpl) then) =
      __$$FailureLoginResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, Data data});

  @override
  $StatusCopyWith<$Res> get status;
  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$FailureLoginResponseImplCopyWithImpl<$Res>
    extends _$FailureSignUpResponseCopyWithImpl<$Res,
        _$FailureLoginResponseImpl>
    implements _$$FailureLoginResponseImplCopyWith<$Res> {
  __$$FailureLoginResponseImplCopyWithImpl(_$FailureLoginResponseImpl _value,
      $Res Function(_$FailureLoginResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$FailureLoginResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FailureLoginResponseImpl implements _FailureLoginResponse {
  const _$FailureLoginResponseImpl({required this.status, required this.data});

  factory _$FailureLoginResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FailureLoginResponseImplFromJson(json);

  @override
  final Status status;
  @override
  final Data data;

  @override
  String toString() {
    return 'FailureSignUpResponse(status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureLoginResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureLoginResponseImplCopyWith<_$FailureLoginResponseImpl>
      get copyWith =>
          __$$FailureLoginResponseImplCopyWithImpl<_$FailureLoginResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FailureLoginResponseImplToJson(
      this,
    );
  }
}

abstract class _FailureLoginResponse implements FailureSignUpResponse {
  const factory _FailureLoginResponse(
      {required final Status status,
      required final Data data}) = _$FailureLoginResponseImpl;

  factory _FailureLoginResponse.fromJson(Map<String, dynamic> json) =
      _$FailureLoginResponseImpl.fromJson;

  @override
  Status get status;
  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  _$$FailureLoginResponseImplCopyWith<_$FailureLoginResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
