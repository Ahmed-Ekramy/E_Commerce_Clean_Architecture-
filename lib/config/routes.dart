import 'package:e_commerce3/features/cart/data/data_sources/get_cart_remote_dto.dart';
import 'package:e_commerce3/features/cart/presentation/manager/get_cart_cubit.dart';
import 'package:e_commerce3/features/home_layout/data/data_sources/home_remote_dto.dart';
import 'package:e_commerce3/features/home_layout/domain/entities/product_entity.dart';
import 'package:e_commerce3/features/home_layout/presentation/manager/home_cubit.dart';
import 'package:e_commerce3/features/login/data/data_sources/login_remote_dto.dart';
import 'package:e_commerce3/features/login/presentation/manager/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../core/utils/components.dart';
import '../features/cart/presentation/pages/cart.dart';
import '../features/home_layout/presentation/pages/layout_screen.dart';
import '../features/login/presentation/pages/login_screen.dart';
import '../features/productDetails/presentation/pages/product_detail.dart';
import '../features/sign_up/data/data_sources/sign_up_remot_dto.dart';
import '../features/sign_up/presentation/manager/sign_up_cubit.dart';
import '../features/sign_up/presentation/pages/sign_up.dart';
class Routes{
 static const String signUp="signUp";
 static const String login="login";
 static const String layout="/";
 static const String productDetail="productDetail";
 static const String cart="cart";
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
          return BlocProvider(
              create: (context) => HomeCubit(HomeRemoteDto())..cat()..brand()..product()..getFav(),
              child: const HomeLayout());
        },);
        case(Routes.productDetail):
        return MaterialPageRoute(builder: (context) {
            ProductDataEntity productDataEntity=routeSettings.arguments as ProductDataEntity;
          return  ProductDetail(productDataEntity);
        },);
        case(Routes.cart):
        return MaterialPageRoute(builder: (context) {
          return  BlocProvider(
              create: (context) => GetCartCubit(GetCartRemoteDto())..getCart(),
              child: const Cart());
        },);
      default:
        return MaterialPageRoute(builder: (context)=> unDefineRoute());
    }

  }
}