import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/uitls/components.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                controller: TextEditingController(),
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
                controller: TextEditingController(),
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
                controller: TextEditingController(),
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
                letterSpacing: -0.17,
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
                onPressed: () {},
                child: Text(
                  'Sign up',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    letterSpacing: -0.17,
                  ),
                ),
              ),
            ),
            SizedBox(height: 89.h),
          ]),
        ),
      ),
    );
  }
}
