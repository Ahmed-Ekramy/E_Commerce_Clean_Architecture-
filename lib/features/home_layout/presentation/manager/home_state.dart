import 'package:e_commerce3/features/home_layout/domain/entities/add_cart_entity.dart';
import 'package:e_commerce3/features/home_layout/domain/entities/brand_entity.dart';
import 'package:e_commerce3/features/home_layout/domain/entities/cat_entity.dart';
import 'package:e_commerce3/features/home_layout/domain/entities/product_entity.dart';

abstract class HomeState {}

class HomeInitial extends HomeState {}

class ChangNavState extends HomeState {}

class CatLoadingState extends HomeState {}

class CatSuccessState extends HomeState {
  CategoryEntity categoryEntity;

  CatSuccessState(this.categoryEntity);
}

class CatFailureState extends HomeState {
  String message;

  CatFailureState(this.message);
}

///////////////////////////////////////////////////////
//cat//
//////////////////////////////////////////////////////
class BrandLoadingState extends HomeState {}

class BrandSuccessState extends HomeState {
  BrandEntity brandEntity;

  BrandSuccessState(this.brandEntity);
}

class BrandFailureState extends HomeState {
  String message;

  BrandFailureState(this.message);
}

class ProductLoadingState extends HomeState {}

class ProductSuccessState extends HomeState {
  ProductEntity productEntity;

  ProductSuccessState(this.productEntity);
}

class ProductFailureState extends HomeState {
  String message;

  ProductFailureState(this.message);
}

class AddCartLoadingState extends HomeState {}
class AddCartSuccessState extends HomeState {
  AddCartEntity addCartEntity;

  AddCartSuccessState(this.addCartEntity);
}
class AddCartFailureState extends HomeState {
  String message;

  AddCartFailureState(this.message);
}
