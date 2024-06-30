// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'success_sign_up_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SuccessSignUpResponse _$SuccessSignUpResponseFromJson(
    Map<String, dynamic> json) {
  return _SuccessSignUpResponse.fromJson(json);
}

/// @nodoc
mixin _$SuccessSignUpResponse {
  String get userId => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  DateTime get dateOfBirth => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuccessSignUpResponseCopyWith<SuccessSignUpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessSignUpResponseCopyWith<$Res> {
  factory $SuccessSignUpResponseCopyWith(SuccessSignUpResponse value,
          $Res Function(SuccessSignUpResponse) then) =
      _$SuccessSignUpResponseCopyWithImpl<$Res, SuccessSignUpResponse>;
  @useResult
  $Res call(
      {String userId,
      String username,
      String fullName,
      DateTime dateOfBirth,
      String phoneNumber,
      String email,
      String avatar});
}

/// @nodoc
class _$SuccessSignUpResponseCopyWithImpl<$Res,
        $Val extends SuccessSignUpResponse>
    implements $SuccessSignUpResponseCopyWith<$Res> {
  _$SuccessSignUpResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? username = null,
    Object? fullName = null,
    Object? dateOfBirth = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? avatar = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SuccessSignUpResponseImplCopyWith<$Res>
    implements $SuccessSignUpResponseCopyWith<$Res> {
  factory _$$SuccessSignUpResponseImplCopyWith(
          _$SuccessSignUpResponseImpl value,
          $Res Function(_$SuccessSignUpResponseImpl) then) =
      __$$SuccessSignUpResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String username,
      String fullName,
      DateTime dateOfBirth,
      String phoneNumber,
      String email,
      String avatar});
}

/// @nodoc
class __$$SuccessSignUpResponseImplCopyWithImpl<$Res>
    extends _$SuccessSignUpResponseCopyWithImpl<$Res,
        _$SuccessSignUpResponseImpl>
    implements _$$SuccessSignUpResponseImplCopyWith<$Res> {
  __$$SuccessSignUpResponseImplCopyWithImpl(_$SuccessSignUpResponseImpl _value,
      $Res Function(_$SuccessSignUpResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? username = null,
    Object? fullName = null,
    Object? dateOfBirth = null,
    Object? phoneNumber = null,
    Object? email = null,
    Object? avatar = null,
  }) {
    return _then(_$SuccessSignUpResponseImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: null == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SuccessSignUpResponseImpl implements _SuccessSignUpResponse {
  const _$SuccessSignUpResponseImpl(
      {required this.userId,
      required this.username,
      required this.fullName,
      required this.dateOfBirth,
      required this.phoneNumber,
      required this.email,
      required this.avatar});

  factory _$SuccessSignUpResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SuccessSignUpResponseImplFromJson(json);

  @override
  final String userId;
  @override
  final String username;
  @override
  final String fullName;
  @override
  final DateTime dateOfBirth;
  @override
  final String phoneNumber;
  @override
  final String email;
  @override
  final String avatar;

  @override
  String toString() {
    return 'SuccessSignUpResponse(userId: $userId, username: $username, fullName: $fullName, dateOfBirth: $dateOfBirth, phoneNumber: $phoneNumber, email: $email, avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessSignUpResponseImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, username, fullName,
      dateOfBirth, phoneNumber, email, avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessSignUpResponseImplCopyWith<_$SuccessSignUpResponseImpl>
      get copyWith => __$$SuccessSignUpResponseImplCopyWithImpl<
          _$SuccessSignUpResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SuccessSignUpResponseImplToJson(
      this,
    );
  }
}

abstract class _SuccessSignUpResponse implements SuccessSignUpResponse {
  const factory _SuccessSignUpResponse(
      {required final String userId,
      required final String username,
      required final String fullName,
      required final DateTime dateOfBirth,
      required final String phoneNumber,
      required final String email,
      required final String avatar}) = _$SuccessSignUpResponseImpl;

  factory _SuccessSignUpResponse.fromJson(Map<String, dynamic> json) =
      _$SuccessSignUpResponseImpl.fromJson;

  @override
  String get userId;
  @override
  String get username;
  @override
  String get fullName;
  @override
  DateTime get dateOfBirth;
  @override
  String get phoneNumber;
  @override
  String get email;
  @override
  String get avatar;
  @override
  @JsonKey(ignore: true)
  _$$SuccessSignUpResponseImplCopyWith<_$SuccessSignUpResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
