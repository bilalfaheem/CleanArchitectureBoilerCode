import 'package:equatable/equatable.dart';

enum LoginStatus { initial, loading, success, failure }

class LoginState extends Equatable {
  final LoginStatus loginStatus;
  final email;
  final password;
  final message;
  const LoginState({
    this.loginStatus = LoginStatus.initial,
    this.email = '',
    this.password = '',
    this.message = '',
  });

  LoginState copyWith(
      {String? email,
      String? password,
      String? message,
      LoginStatus? loginState}) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      message: message ?? this.message,
      loginStatus: loginState ?? this.loginStatus,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [email, password, message, loginStatus];
}
