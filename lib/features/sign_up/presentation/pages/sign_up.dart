import 'package:e_commerce3/config/routes.dart';
import 'package:e_commerce3/features/sign_up/presentation/manager/sign_up_cubit.dart';
import 'package:e_commerce3/features/sign_up/presentation/manager/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/components.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if(state is SignUpLoadingState){
            const Center(child:  CircularProgressIndicator());
        }else if(state is SignUpFailureState){
          Center(child: Text(state.message));
          print(state.message);
        }else{
          Navigator.pushNamed(context, Routes.layout);

        }
      },
      builder: (context, state) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SingleChildScrollView(
              child:
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 203.h,
                    ),
                    Text(
                      'Full Name',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.17,
                      ),
                    ),
                    SizedBox(height: 24.h),
                    defaultFormField(
                        controller: SignUpCubit.get(context).namController,
                        label: 'Full Name',
                        validate: (value) {
                          return null;
                        }),
                    SizedBox(height: 32.h),
                    Text(
                      "Phone Number",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.17,
                      ),
                    ),
                    SizedBox(height: 24.h),
                    defaultFormField(
                        controller:  SignUpCubit.get(context).phoneController,
                        label: "Phone Number",
                        validate: (value) {
                          return null;
                        }),
                    SizedBox(
                      height: 32.h,
                    ),
                    Text(
                      "Email",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.17,
                      ),
                    ),
                    SizedBox(height: 24.h),
                    defaultFormField(
                        controller:  SignUpCubit.get(context).emailController,
                        label: "Email",
                        validate: (value) {
                          bool emailValid = RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value!);
                          if (value == null || value.isEmpty || !emailValid) {
                            return "Please Enter valid Email Address";
                          }
                          return null;
                        }),
                    SizedBox(height: 32.h),
                    Text(
                      "Password",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 24.h),
                    defaultFormField(
                        controller:  SignUpCubit.get(context).passwordController,
                        label: "Password",
                        validate: (value) {
                          return null;
                        }),
                    SizedBox(height: 56.h),
                    Container(
                      height: 64.h,
                      width: 398.w,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          SignUpCubit.get(context).signUp();
                        },
                        child: Text(
                          'Sign up',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,

                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 89.h),
                  ]),
            ),
          ),
        );
      },
    );
  }
}
