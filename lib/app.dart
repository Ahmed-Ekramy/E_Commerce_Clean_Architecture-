import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'config/routes.dart';

class ECommerce extends StatelessWidget {
  String route;
   ECommerce(this.route,{super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings)=> AppRoutes.onGenerate(settings),
          initialRoute:"/"
      ),
    );
  }
}
