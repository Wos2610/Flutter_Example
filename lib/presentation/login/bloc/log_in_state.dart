part of 'log_in_bloc.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginLoaded extends LoginState {
  final String email;
  final String password;

  LoginLoaded(this.email, this.password);

}

class LoginSuccess extends LoginState {
  final SuccessLoginResponse successLoginResponse;

  LoginSuccess(this.successLoginResponse);
}

class LoginFailure extends LoginState {
  final String error;

  LoginFailure(this.error);
}
