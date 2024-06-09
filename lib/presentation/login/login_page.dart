
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_bloc/resources/component/button/primary_button.dart';
import 'package:todo_bloc/resources/theme/app_text_style.dart';
import 'package:todo_bloc/resources/theme/app_theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginPage> {
  // Handling mobile back button routing

  @override
  Widget build(BuildContext context) {
    //Pop Scope is used to handle the system navigation
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: CustomAppBar(
      //   backgroundColor: Colors.white,
      //   leading: const SizedBox.shrink(),
      //   image: AppAssets.authImg,
      //   toolbarHeight: 266.h,
      // ),
      body: SingleChildScrollView(
        // BigInt.from(value)
        physics: const ClampingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 44.h, vertical: 10.h),
        child: Column(
          children: [
            10.h.verticalSpace,
            Text(
              "Login",
              style: AppTextStyle.displayLarge,
            ),
            10.h.verticalSpace,
            Text(
              "Enter your account details to login",
              style: AppTextStyle.displayRegular,
            ),
      
            20.h.verticalSpace,
            PrimaryButton(
              title: "Login",
              onTap: () {
                // AppRouting.pushReplacement(context, const HomeMainView());
              },
            ),
            36.h.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 23.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 1.h,
                    width: 92.5.w,
                    color: AppTheme.secondaryColor.withOpacity(.5.r),
                  ),
                  Text(
                    "Login With",
                    style: AppTextStyle.displayRegular.copyWith(
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    height: 1.h,
                    width: 92.5.w,
                    color: AppTheme.secondaryColor.withOpacity(.5.r),
                  ),
                ],
              ),
            ),
          
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50.h,
        width: 1.sw,
        margin: EdgeInsets.only(bottom: 30.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Don’t have an account?",
              style: AppTextStyle.displaySmall,
            ),
            // SplashButton(
            //   title: "Signup",
            //   onTap: () => AppRouting.routeTo(context, SignUpView()),
            // ),
          ],
        ),
      ),
    );
  }
}
