part of 'sign_up_bloc.dart';

@immutable
abstract class SignUpEvent {}

class FetchUserList extends SignUpEvent {}

class SignUpButtonPressed extends SignUpEvent {

}

class UsernameChanged extends SignUpEvent {
  final String username;

  UsernameChanged(this.username);
}

class PasswordChanged extends SignUpEvent {
  final String password;

  PasswordChanged(this.password);
}

class EmailChanged extends SignUpEvent {
  final String email;

  EmailChanged(this.email);
}
