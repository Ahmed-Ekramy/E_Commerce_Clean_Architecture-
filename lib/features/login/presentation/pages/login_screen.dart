import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/components.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 249.h,
            ),
             Text('Welcome Back',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.17,
                )),
            SizedBox(
              height: 8.h,
            ),
             Text(
              'Please sign in with your mail',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.sp,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w300,
                letterSpacing: -0.17,
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Text(
              'User Name',
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
                controller: TextEditingController(),
                label: 'User Name',
                validate: (value) {
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
                controller: TextEditingController(),
                label: "Password",
                validate: (value) {
                  bool validatePassword = RegExp(
                    r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$',
                  ).hasMatch(value!);
                  if (value == null || value.isEmpty || !validatePassword) {
                    return "Please Enter valid Email Address";
                  }
                  return null;
                }),
            SizedBox(height: 16.h),
             Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot password',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 65.h,
            ),
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
                  onPressed: () {}, child:  Text(
                  ' Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.17,
                  ),),)
            ),
            Row(
              children: [
                const Text(
                  'Don’t have an account? ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.17,
                  ),
                ),
                TextButton(
                  onPressed: () {

                  },
                  child:  Text('Create Account ', textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,

                    ),),

                )

              ],

            )
          ],
        ),
      ),
    );
  }
}
