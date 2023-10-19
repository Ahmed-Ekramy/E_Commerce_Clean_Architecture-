import '../entities/sign_up_entity.dart';
import '../repositories/sign_up_domain_repo.dart';

class SignUpUseCase{
  SignUpUseCase(this.signUpDomainRepo);
  SignUpDomainRepo signUpDomainRepo;
  Future<SignUpEntity> call()=> signUpDomainRepo.signUp();
}