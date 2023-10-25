
import 'package:e_commerce3/features/login/domain/entities/login_entity.dart';

abstract class LoginState {}

class LoginInitial extends LoginState {}
class LoadingLoginSate extends LoginState {}
class SuccessLoginState extends LoginState {
  LoginEntity loginEntity;

  SuccessLoginState(this.loginEntity);
}
class FailureLoginState extends LoginState {
  String message;
  FailureLoginState(this.message);
}