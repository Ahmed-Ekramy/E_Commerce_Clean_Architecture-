import 'package:flutter/material.dart';
import '../core/components.dart';
import '../features/login/presentation/pages/login_screen.dart';
import '../features/sign_up/presentation/pages/sign_up.dart';
class Routes{
 static const String signUp="/";
 static const String login="login";
}
class AppRoutes{
  static Route onGenerate(RouteSettings routeSettings){
    switch(routeSettings.name){
      case(Routes.signUp):
        return MaterialPageRoute(builder: (context) {
          return const SignUp();
        },);
      case(Routes.login):
        return MaterialPageRoute(builder: (context) {
          return const LoginScreen();
        },);
      default:
        return MaterialPageRoute(builder: (context)=> unDefineRoute());
    }

  }
}