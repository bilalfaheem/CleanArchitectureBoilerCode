import 'package:todo_bloc/bloc/login_bloc/login_event.dart';
import 'package:todo_bloc/bloc/login_bloc/login_state.dart';
import 'package:bloc/bloc.dart';
import 'package:todo_bloc/domain/repositories/login_repo.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepo loginRepo;

  LoginBloc({required this.loginRepo}) : super(const LoginState()) {
    on<LoginRequested>(_login);
  }

  void _login(LoginRequested event, Emitter<LoginState> emit) {
    emit(state.copyWith(email: event.email, password: event.password));
  }
}
