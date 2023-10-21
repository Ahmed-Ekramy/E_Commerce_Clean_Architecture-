import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_commerce3/core/uitls/constant.dart';
import 'package:e_commerce3/core/uitls/end_points.dart';
import 'package:e_commerce3/core/uitls/failures.dart';
import 'package:e_commerce3/features/sign_up/data/data_sources/sign_up_dto.dart';
import 'package:e_commerce3/features/sign_up/data/models/sign_up_model.dart';
import 'package:e_commerce3/features/sign_up/data/models/user_model.dart';

class SignUpRemoteDto implements SignUpDto{
  Dio dio=Dio();

  @override
  Future<Either<Failures, SignUpModel>> signUp(UserModel userModel ) async{
    try{
     var response =await dio.post(
         "${Constant.baseUrl}${EndPoints.signUp}",data:
     {
        "name":userModel.name ,
        "email":userModel.email,
        "password":userModel. password,
        "rePassword":userModel.rePassword,
        "phone":userModel.phone
      });
     SignUpModel signUpModel=SignUpModel.fromJson(response.data);
return right(signUpModel) ;
    }catch(e){
      if (e is DioException) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}