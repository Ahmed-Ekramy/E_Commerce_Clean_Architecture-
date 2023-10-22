import 'package:dartz/dartz.dart';
import '../../../../core/utils/failures.dart';
import '../../data/models/user_model.dart';
import '../entities/sign_up_entity.dart';
import '../repositories/sign_up_domain_repo.dart';

class SignUpUseCase{
  SignUpUseCase(this.signUpDomainRepo);
  SignUpDomainRepo signUpDomainRepo;
  Future<Either<Failures,SignUpEntity>> call(UserModel userModel)=> signUpDomainRepo.signUp(userModel);
}