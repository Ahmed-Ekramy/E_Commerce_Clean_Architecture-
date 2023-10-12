import 'package:flutter/material.dart';

import '../core/components.dart';
import '../features/sign_up/presentation/pages/sign_up.dart';
class Routes{
 static const String signUp="/";
}
class AppRoutes{
  Route onGenerate(RouteSettings routeSettings){
    switch(routeSettings.name){
      case(Routes.signUp):
        return MaterialPageRoute(builder: (context) {
          return const SignUp();
        },);
      default:
        return MaterialPageRoute(builder: (context)=> unDefineRoute());
    }

  }
}