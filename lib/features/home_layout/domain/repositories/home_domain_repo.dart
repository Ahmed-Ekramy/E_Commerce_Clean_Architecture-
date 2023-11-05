import 'package:dartz/dartz.dart';
import 'package:e_commerce3/core/utils/failures.dart';
import 'package:e_commerce3/features/home_layout/domain/entities/brand_entity.dart';
import 'package:e_commerce3/features/home_layout/domain/entities/cat_entity.dart';
import '../entities/add_cart_entity.dart';
import '../entities/product_entity.dart';

abstract class HomeDomainRepo{

  Future<Either<Failures,CategoryEntity>>cat();
  Future<Either<Failures,BrandEntity>>brand();
  Future<Either<Failures,ProductEntity>>product();
  Future<Either<Failures,AddCartEntity>>addCart();
  
}