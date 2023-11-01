import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';
import 'config/routes.dart';
import 'core/utils/cache_helper.dart';
import 'core/utils/observer.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  Bloc.observer = MyBlocObserver();
  String route;
  var user=CacheHelper.getData("User");
  if(user==null){
    route=Routes.login;
  }else{
    route=Routes.layout;
  }
  runApp( ECommerce(route));
}
