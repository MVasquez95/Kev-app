import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kev_app/forms/login_submission_status.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginEvent>((event, emit) async* {
      if(event is LoginUserChanged){
        yield event.username;
      } else if (event is LoginPassChanged){
        yield event.password;
      }
    });
  }
}
