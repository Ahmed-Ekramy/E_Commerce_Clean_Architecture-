import 'package:dartz/dartz.dart';
import 'package:e_commerce3/core/utils/failures.dart';
import 'package:e_commerce3/features/login/domain/entities/login_entity.dart';
import 'package:e_commerce3/features/login/domain/repositories/login_domain_repo.dart';

import '../../data/models/user_login_model.dart';

class LoginUseCase{
  LoginDomainRepo loginDomainRepo;
  LoginUseCase(this.loginDomainRepo);
  Future<Either<Failures,LoginEntity>>call(UserLoginModel userLoginModel)=>loginDomainRepo.login( userLoginModel);
}