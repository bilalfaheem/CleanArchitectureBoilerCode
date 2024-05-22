import 'package:equatable/equatable.dart';

sealed class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class LoginRequested extends LoginEvent {
  const LoginRequested(this.email, this.password);
  final String email;
  final String password;

  @override
  List<Object> get props => [email, password];
}
