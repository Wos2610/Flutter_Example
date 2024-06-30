// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'success_login_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SuccessLoginResponse _$SuccessLoginResponseFromJson(Map<String, dynamic> json) {
  return _SuccessLoginResponse.fromJson(json);
}

/// @nodoc
mixin _$SuccessLoginResponse {
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuccessLoginResponseCopyWith<SuccessLoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessLoginResponseCopyWith<$Res> {
  factory $SuccessLoginResponseCopyWith(SuccessLoginResponse value,
          $Res Function(SuccessLoginResponse) then) =
      _$SuccessLoginResponseCopyWithImpl<$Res, SuccessLoginResponse>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$SuccessLoginResponseCopyWithImpl<$Res,
        $Val extends SuccessLoginResponse>
    implements $SuccessLoginResponseCopyWith<$Res> {
  _$SuccessLoginResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SuccessLoginResponseImplCopyWith<$Res>
    implements $SuccessLoginResponseCopyWith<$Res> {
  factory _$$SuccessLoginResponseImplCopyWith(_$SuccessLoginResponseImpl value,
          $Res Function(_$SuccessLoginResponseImpl) then) =
      __$$SuccessLoginResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$SuccessLoginResponseImplCopyWithImpl<$Res>
    extends _$SuccessLoginResponseCopyWithImpl<$Res, _$SuccessLoginResponseImpl>
    implements _$$SuccessLoginResponseImplCopyWith<$Res> {
  __$$SuccessLoginResponseImplCopyWithImpl(_$SuccessLoginResponseImpl _value,
      $Res Function(_$SuccessLoginResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$SuccessLoginResponseImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SuccessLoginResponseImpl implements _SuccessLoginResponse {
  const _$SuccessLoginResponseImpl({required this.email});

  factory _$SuccessLoginResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuccessLoginResponseImplFromJson(json);

  @override
  final String email;

  @override
  String toString() {
    return 'SuccessLoginResponse(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessLoginResponseImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessLoginResponseImplCopyWith<_$SuccessLoginResponseImpl>
      get copyWith =>
          __$$SuccessLoginResponseImplCopyWithImpl<_$SuccessLoginResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SuccessLoginResponseImplToJson(
      this,
    );
  }
}

abstract class _SuccessLoginResponse implements SuccessLoginResponse {
  const factory _SuccessLoginResponse({required final String email}) =
      _$SuccessLoginResponseImpl;

  factory _SuccessLoginResponse.fromJson(Map<String, dynamic> json) =
      _$SuccessLoginResponseImpl.fromJson;

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$SuccessLoginResponseImplCopyWith<_$SuccessLoginResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
