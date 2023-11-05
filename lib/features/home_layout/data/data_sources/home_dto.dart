import 'package:dartz/dartz.dart';
import 'package:e_commerce3/core/utils/failures.dart';
import 'package:e_commerce3/features/home_layout/data/models/add_cart_model.dart';
import 'package:e_commerce3/features/home_layout/data/models/brand_model.dart';
import 'package:e_commerce3/features/home_layout/data/models/cat_model.dart';
import 'package:e_commerce3/features/home_layout/data/models/product_model.dart';

abstract class HomeDto{
  Future<Either<Failures,CategoryModel>>cat();
  Future<Either<Failures,BrandModel>>brand();
  Future<Either<Failures,ProductModel>>product();
  Future<Either<Failures,AddCartModel>>addCart();
}