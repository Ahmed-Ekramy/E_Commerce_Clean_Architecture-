import 'package:dartz/dartz.dart';
import 'package:e_commerce3/core/utils/failures.dart';
import 'package:e_commerce3/features/login/data/data_sources/login_dto.dart';
import 'package:e_commerce3/features/login/data/models/login_model.dart';
import 'package:e_commerce3/features/login/domain/entities/login_entity.dart';
import 'package:e_commerce3/features/login/domain/repositories/login_domain_repo.dart';

import '../models/user_login_model.dart';

class LoginDataRepo extends LoginDomainRepo{
  LoginDto loginDto;

  LoginDataRepo(this.loginDto);

  @override
  Future<Either<Failures, LoginModel>> login(UserLoginModel userLoginModel) =>loginDto.login( userLoginModel);

}