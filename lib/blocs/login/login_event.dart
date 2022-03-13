part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class LoginUserChanged extends LoginEvent{
  final String username;

  LoginUserChanged(this.username);
}

class LoginPassChanged extends LoginEvent{
  final String password;

  LoginPassChanged(this.password);
}

class LoginSubmitted extends LoginEvent{}