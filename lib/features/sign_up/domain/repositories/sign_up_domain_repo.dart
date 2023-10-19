import '../entities/sign_up_entity.dart';
abstract class SignUpDomainRepo{
  Future<SignUpEntity> signUp();

}