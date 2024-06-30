part of 'sign_up_bloc.dart';

@immutable
abstract class SignUpState {}

class SignUpInitial extends SignUpState {}

class SignUpLoading extends SignUpState {}

class SignUpLoaded extends SignUpState {
  final String username;
  final String password;
  final String email;

  SignUpLoaded(this.username, this.password, this.email);
}

class SignUpSuccess extends SignUpState {
  final User user;

  SignUpSuccess(this.user);
}

class SignUpFailure extends SignUpState {
  final String error;

  SignUpFailure(this.error);
}
