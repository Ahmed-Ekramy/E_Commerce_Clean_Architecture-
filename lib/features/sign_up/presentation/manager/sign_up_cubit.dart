import 'package:e_commerce3/features/sign_up/data/models/user_model.dart';
import 'package:e_commerce3/features/sign_up/data/repositories/sign_up_data_repo.dart';
import 'package:e_commerce3/features/sign_up/domain/repositories/sign_up_domain_repo.dart';
import 'package:e_commerce3/features/sign_up/domain/use_cases/sign_up_use_case.dart';
import 'package:e_commerce3/features/sign_up/presentation/manager/sign_up_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/data_sources/sign_up_dto.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpDto signUpDto;
  SignUpCubit(this.signUpDto) : super(SignUpInitialState());

  static SignUpCubit get(context) => BlocProvider.of(context);
  var namController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneController = TextEditingController();

  void signUp() async{
    emit(SignUpLoadingState());
    SignUpDomainRepo signUpDomainRepo = SignUpDataRepo(signUpDto);
    SignUpUseCase signUpUseCase = SignUpUseCase(signUpDomainRepo);
    UserModel userModel = UserModel(
        namController.text,  phoneController.text,emailController.text, passwordController.text,
       );
   var result =await signUpUseCase.call(userModel);
   result.fold((l) {
     emit(SignUpFailureState(l.message));
     print(l.toString());
   }, (r) => emit(SignUpSuccessState(r)));
  }
}
