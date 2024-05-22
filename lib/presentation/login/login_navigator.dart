import 'package:flutter/material.dart';
import 'package:todo_bloc/navigation/navigation.dart';
import 'package:todo_bloc/presentation/login/login_initial_params.dart';

import 'login_page.dart';

class LoginNavigator  {
  LoginNavigator(this.navigator);

  @override
  late BuildContext context;

  @override
  final Navigation navigator;
}

mixin LoginRoute {
  openLogin(LoginInitialParams initialParams) {
    navigator.push(
      context,
      LoginPage(),
    );
  }

  Navigation get navigator;

  BuildContext get context;
}
