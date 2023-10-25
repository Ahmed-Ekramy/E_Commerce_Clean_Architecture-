

import 'package:e_commerce3/features/login/data/data_sources/login_dto.dart';
import 'package:e_commerce3/features/login/data/models/user_login_model.dart';
import 'package:e_commerce3/features/login/data/repositories/login_data_repo.dart';
import 'package:e_commerce3/features/login/domain/repositories/login_domain_repo.dart';
import 'package:e_commerce3/features/login/domain/use_cases/use_case_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginDto  loginDto;
  LoginCubit(this.loginDto) : super(LoginInitial());
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  static LoginCubit get(context)=>BlocProvider.of(context);
  void login()async{
    emit(LoadingLoginSate());
    LoginDomainRepo loginDomainRepo=LoginDataRepo(loginDto);
    LoginUseCase loginUseCase=LoginUseCase(loginDomainRepo);
    UserLoginModel userLoginModel=UserLoginModel(
        email: emailController.text, 
        password: passwordController.text
      
    );
    var result=await loginUseCase.call(userLoginModel);
    result.fold((l) => emit(FailureLoginState(l.message)), (r) => emit(SuccessLoginState(r)));
  }
}
