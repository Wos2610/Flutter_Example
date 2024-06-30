// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure_login_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FailureLoginResponse _$FailureLoginResponseFromJson(Map<String, dynamic> json) {
  return _FailureLoginResponse.fromJson(json);
}

/// @nodoc
mixin _$FailureLoginResponse {
  Status get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FailureLoginResponseCopyWith<FailureLoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureLoginResponseCopyWith<$Res> {
  factory $FailureLoginResponseCopyWith(FailureLoginResponse value,
          $Res Function(FailureLoginResponse) then) =
      _$FailureLoginResponseCopyWithImpl<$Res, FailureLoginResponse>;
  @useResult
  $Res call({Status status});

  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class _$FailureLoginResponseCopyWithImpl<$Res,
        $Val extends FailureLoginResponse>
    implements $FailureLoginResponseCopyWith<$Res> {
  _$FailureLoginResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusCopyWith<$Res> get status {
    return $StatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FailureLoginResponseImplCopyWith<$Res>
    implements $FailureLoginResponseCopyWith<$Res> {
  factory _$$FailureLoginResponseImplCopyWith(_$FailureLoginResponseImpl value,
          $Res Function(_$FailureLoginResponseImpl) then) =
      __$$FailureLoginResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status});

  @override
  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$FailureLoginResponseImplCopyWithImpl<$Res>
    extends _$FailureLoginResponseCopyWithImpl<$Res, _$FailureLoginResponseImpl>
    implements _$$FailureLoginResponseImplCopyWith<$Res> {
  __$$FailureLoginResponseImplCopyWithImpl(_$FailureLoginResponseImpl _value,
      $Res Function(_$FailureLoginResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$FailureLoginResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FailureLoginResponseImpl implements _FailureLoginResponse {
  const _$FailureLoginResponseImpl({required this.status});

  factory _$FailureLoginResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FailureLoginResponseImplFromJson(json);

  @override
  final Status status;

  @override
  String toString() {
    return 'FailureLoginResponse(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureLoginResponseImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status);

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

abstract class _FailureLoginResponse implements FailureLoginResponse {
  const factory _FailureLoginResponse({required final Status status}) =
      _$FailureLoginResponseImpl;

  factory _FailureLoginResponse.fromJson(Map<String, dynamic> json) =
      _$FailureLoginResponseImpl.fromJson;

  @override
  Status get status;
  @override
  @JsonKey(ignore: true)
  _$$FailureLoginResponseImplCopyWith<_$FailureLoginResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
