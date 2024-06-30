part of 'log_in_bloc.dart';

@immutable
abstract class LoginEvent {}

class LoginButtonPressed extends LoginEvent {
}

class EmailChanged extends LoginEvent {
  final String email;

  EmailChanged(this.email);
}

class PasswordChanged extends LoginEvent {
  final String password;

  PasswordChanged(this.password);
}

class NativeViewButtonPressed extends LoginEvent {
  final String batteryLevel;

  NativeViewButtonPressed(this.batteryLevel);
}
