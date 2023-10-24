import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_commerce3/features/sign_up/data/data_sources/sign_up_dto.dart';
import 'package:e_commerce3/features/sign_up/data/models/sign_up_model.dart';
import 'package:e_commerce3/features/sign_up/data/models/user_model.dart';
import '../../../../core/utils/constant.dart';
import '../../../../core/utils/end_points.dart';
import '../../../../core/utils/failures.dart';

class SignUpRemoteDto implements SignUpDto{
  Dio dio=Dio();

  @override
  Future<Either<Failures, SignUpModel>> signUp(UserModel userModel ) async{
    try{
     var response =await dio.post(
         "${Constant.baseUrl}${EndPoints.signUp}",data:
     {
        "name":userModel.name ,
       "phone":userModel.phone,
        "email":userModel.email,
        "password":userModel. password,

      });
     print(response.data);
     SignUpModel signUpModel=SignUpModel.fromJson(response.data);
     print(signUpModel.user);
return Right(signUpModel) ;
    }catch(e){
      print(e.toString());
      if (e is DioException) {
        return Left(ServerFailure.fromDiorError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
}