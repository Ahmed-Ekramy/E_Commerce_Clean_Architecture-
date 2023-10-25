import 'package:e_commerce3/features/login/data/data_sources/login_remote_dto.dart';
import 'package:e_commerce3/features/login/presentation/manager/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../core/utils/components.dart';
import '../features/home_layout/presentation/pages/layout_screen.dart';
import '../features/login/presentation/pages/login_screen.dart';
import '../features/sign_up/data/data_sources/sign_up_remot_dto.dart';
import '../features/sign_up/presentation/manager/sign_up_cubit.dart';
import '../features/sign_up/presentation/pages/sign_up.dart';
class Routes{
 static const String signUp="signUp";
 static const String login="/";
 static const String layout="layout";
}
class AppRoutes{
  static Route onGenerate(RouteSettings routeSettings){
    switch(routeSettings.name){
      case(Routes.signUp):
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
              create: (context) => SignUpCubit(SignUpRemoteDto()),
              child: const SignUp());
        },);
      case(Routes.login):
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(
              create: (context) => LoginCubit(LoginRemoteDto()),
              child: const LoginScreen());
        },);
        case(Routes.layout):
        return MaterialPageRoute(builder: (context) {
          return const HomeLayout();
        },);
      default:
        return MaterialPageRoute(builder: (context)=> unDefineRoute());
    }

  }
}