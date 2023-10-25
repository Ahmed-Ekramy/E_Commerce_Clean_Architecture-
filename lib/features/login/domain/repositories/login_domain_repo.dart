import 'package:dartz/dartz.dart';
import 'package:e_commerce3/core/utils/failures.dart';
import 'package:e_commerce3/features/login/domain/entities/login_entity.dart';

import '../../data/models/user_login_model.dart';

abstract class LoginDomainRepo{
  Future<Either<Failures,LoginEntity>>login(UserLoginModel userLoginModel);
}