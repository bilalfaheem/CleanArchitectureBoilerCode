import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_bloc/bloc/login_bloc/login_bloc.dart';
import 'package:todo_bloc/presentation/login/login_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(430, 932),
        useInheritedMediaQuery: true,
        builder: (context, child) {
          return MultiBlocProvider(
              providers: [
                // BlocProvider(
                //   // create: (_) => Login(),
                // )
              ],
              child: const MaterialApp(
                debugShowCheckedModeBanner: false,
                home: LoginPage(),
              ));
        });
  }
}
