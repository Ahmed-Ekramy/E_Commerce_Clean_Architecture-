import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_commerce3/core/utils/constant.dart';
import 'package:e_commerce3/core/utils/end_points.dart';
import 'package:e_commerce3/core/utils/failures.dart';
import 'package:e_commerce3/features/cart/data/data_sources/get_cart_dto.dart';
import 'package:e_commerce3/features/cart/data/models/get_cart_model.dart';
import 'package:e_commerce3/features/cart/domain/use_cases/update_use_case.dart';

import '../../../../core/utils/cache_helper.dart';

class GetCartRemoteDto extends GetCartDto {
  Dio dio = Dio();
  var token = CacheHelper.getData("User");

  @override
  Future<Either<Failures, GetCartModel>> getCart() async {
    try {
      var response = await dio.get("${Constant.baseUrl}${EndPoints.cart}",
          options: Options(headers: {"token": token}));
      GetCartModel getCartModel = GetCartModel.fromJson(response.data);
      return Right(getCartModel);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDiorError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
  @override
  Future<Either<Failures, GetCartModel>> deleteItem(String id) async {
    try{
      var response = await dio.delete("${Constant.baseUrl}${EndPoints.cart}/$id",
          options: Options(headers: {"token": token}));
      GetCartModel getCartModel = GetCartModel.fromJson(response.data);
      return Right(getCartModel);
    }catch(e){
      if (e is DioException) {
        return Left(ServerFailure.fromDiorError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failures, GetCartModel>> upDate(String id, int count) async{
    try{
      var response = await dio.put("${Constant.baseUrl}${EndPoints.cart}/$id",
          data: {"count": count}, options: Options(headers: {"token": token}));
      GetCartModel getCartModel = GetCartModel.fromJson(response.data);
      return Right(getCartModel);
    }catch(e){
      if (e is DioException) {
        return Left(ServerFailure.fromDiorError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}
