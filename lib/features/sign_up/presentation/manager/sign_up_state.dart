
import 'package:e_commerce3/features/sign_up/domain/entities/sign_up_entity.dart';
import '../../../../core/utils/failures.dart';

abstract class SignUpState {}

class SignUpInitialState extends SignUpState {}
class SignUpLoadingState extends SignUpState {}
class SignUpSuccessState extends SignUpState {
  SignUpEntity signUpEntity;

  SignUpSuccessState(this.signUpEntity);
}
class SignUpFailureState extends SignUpState {
  String message;

  SignUpFailureState(this.message);
}
