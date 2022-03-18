part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  final String username;
  final String password;
  final FormSubmissionStatus formStatus;
  
  LoginState({
    this.username = '',
    this.password = '',
    this.formStatus = const InitialFormStatus(),
  });

  @override
  List<Object> get props => [username,password,formStatus];
}

class LoginInitial extends LoginState {}
