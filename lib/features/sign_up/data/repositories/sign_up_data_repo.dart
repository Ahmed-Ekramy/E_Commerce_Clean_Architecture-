import 'package:dartz/dartz.dart';
import 'package:e_commerce3/features/sign_up/data/data_sources/sign_up_dto.dart';
import 'package:e_commerce3/features/sign_up/data/models/user_model.dart';
import 'package:e_commerce3/features/sign_up/domain/entities/sign_up_entity.dart';
import 'package:e_commerce3/features/sign_up/domain/repositories/sign_up_domain_repo.dart';

import '../../../../core/utils/failures.dart';

class SignUpDataRepo implements SignUpDomainRepo{
  SignUpDto signUpDto;
  SignUpDataRepo(this.signUpDto);
  @override
  Future<Either<Failures, SignUpEntity>> signUp(UserModel userModel) =>signUpDto.signUp(userModel);

}