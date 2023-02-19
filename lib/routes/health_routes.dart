import 'package:bloc_mvvm/view_model/cubit/auth/auth_cubit.dart';
import 'package:bloc_mvvm/view_model/cubit/auth/auth_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../view/registeration/forget/forget_pages.dart';
import '../view/registeration/signin/sign_with_number.dart';
import '../view/registeration/signin/signin_page.dart';
import '../view/registeration/signup/signup_pages.dart';
import 'health_routes_constant.dart';

class Routes {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => BlocProvider<AuthCubit>(
            create: (context) => AuthCubit(AccountInitial()),
            child: SignInPages(),
          ),
        );
    }
    return null;
  }

  // static final routes = [
  //   GetPage(
  //       name: RouteConstant.SIGNINROUTS,
  //       page: () => SignInPages(),
  //       transition: Transition.rightToLeft,
  //       transitionDuration: const Duration(milliseconds: 200)),
  //   GetPage(
  //       name: RouteConstant.FORGETPASSWORDROUTE,
  //       page: () => const ForgetPasswordPage(),
  //       transition: Transition.rightToLeft,
  //       transitionDuration: const Duration(milliseconds: 200)),
  //   GetPage(
  //       name: RouteConstant.SIGNUPROUTES,
  //       page: () => const SignUpPages(),
  //       transition: Transition.rightToLeft,
  //       transitionDuration: const Duration(milliseconds: 200)),
  //   GetPage(
  //       name: RouteConstant.SIGNWITHNUMBERROUTS,
  //       page: () => const SignWithNumber(),
  //       transition: Transition.rightToLeft,
  //       transitionDuration: const Duration(milliseconds: 200))
  // ];
}
