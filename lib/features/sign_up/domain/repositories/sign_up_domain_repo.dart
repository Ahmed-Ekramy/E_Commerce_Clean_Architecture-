import 'package:dartz/dartz.dart';
import 'package:e_commerce3/features/sign_up/data/models/user_model.dart';
import '../../../../core/utils/failures.dart';
import '../entities/sign_up_entity.dart';
abstract class SignUpDomainRepo{
  Future<Either<Failures,SignUpEntity>> signUp(UserModel userModel);

}