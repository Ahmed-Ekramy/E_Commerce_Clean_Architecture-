import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_commerce3/core/utils/constant.dart';
import 'package:e_commerce3/core/utils/end_points.dart';
import 'package:e_commerce3/core/utils/failures.dart';
import 'package:e_commerce3/features/login/data/data_sources/login_dto.dart';
import 'package:e_commerce3/features/login/data/models/login_model.dart';
import '../models/user_login_model.dart';

class LoginRemoteDto extends LoginDto {
  Dio dio = Dio();

  @override
  Future<Either<Failures, LoginModel>> login(UserLoginModel userLoginModel) async {
  try  {
      var response = await dio.post("${Constant.baseUrl}${EndPoints.login}",
          data: {
            "email": userLoginModel.email,
            "password": userLoginModel.password
          });
      LoginModel loginModel = LoginModel.fromJson(response.data);
      return Right(loginModel);
    }catch(e){
    if (e is DioException) {
      return Left(ServerFailure.fromDiorError(e));
    }
    return Left(ServerFailure(e.toString()));
  }
  }
  }
