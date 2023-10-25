import 'package:dartz/dartz.dart';
import '../../../../core/utils/failures.dart';
import '../models/login_model.dart';
import '../models/user_login_model.dart';
abstract class LoginDto{
  Future<Either<Failures,LoginModel>>login(UserLoginModel userLoginModel);
}