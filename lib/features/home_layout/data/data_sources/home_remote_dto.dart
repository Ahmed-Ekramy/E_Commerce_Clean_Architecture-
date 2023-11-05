import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_commerce3/core/utils/cache_helper.dart';
import 'package:e_commerce3/core/utils/constant.dart';
import 'package:e_commerce3/core/utils/end_points.dart';
import 'package:e_commerce3/core/utils/failures.dart';
import 'package:e_commerce3/features/home_layout/data/data_sources/home_dto.dart';
import 'package:e_commerce3/features/home_layout/data/models/brand_model.dart';
import 'package:e_commerce3/features/home_layout/data/models/cat_model.dart';
import 'package:e_commerce3/features/home_layout/data/models/product_model.dart';

import '../models/add_cart_model.dart';

class HomeRemoteDto extends HomeDto {
  Dio dio = Dio();

  @override
  Future<Either<Failures, BrandModel>> brand() async {
    try {
      var response = await dio.get("${Constant.baseUrl}${EndPoints.brands}");
      BrandModel brandModel = BrandModel.fromJson(response.data);
      return Right(brandModel);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDiorError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failures, CategoryModel>> cat() async {
    try {
      var response =
          await dio.get("${Constant.baseUrl}${EndPoints.categories}");
      CategoryModel categoryModel = CategoryModel.fromJson(response.data);
      return Right(categoryModel);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDiorError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failures, ProductModel>> product() async {
    try {
      var response = await dio.get("${Constant.baseUrl}${EndPoints.products}");
      ProductModel productModel = ProductModel.fromJson(response.data);
      return Right(productModel);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDiorError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failures, AddCartModel>> addCart(String productId) async {
    var userToken = CacheHelper.getData("user");
    try {
      var response =await dio.post("${Constant.baseUrl}${EndPoints.cart}",
          options: Options(headers: {"token": userToken}),
          data:{
        "productId":productId
          } );
      AddCartModel addCartModel=AddCartModel.fromJson(response.data);
      return Right(addCartModel);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDiorError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
    }
  }
