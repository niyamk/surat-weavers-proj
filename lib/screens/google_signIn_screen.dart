import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class GoogleSigninScreen extends StatefulWidget {
  const GoogleSigninScreen({super.key});

  @override
  State<GoogleSigninScreen> createState() => _GoogleSigninScreenState();
}

class _GoogleSigninScreenState extends State<GoogleSigninScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFF324BCD),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 7.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset('assets/images/rating_logo.png',
                    height: 120.sp),
              ),
              Text(
                'Welcome,',
                style: TextStyle(color: Colors.white, fontSize: 30.sp),
              ),
              SizedBox(height: 3.h),
              Text(
                'Sign In through your google id : ',
                style: TextStyle(color: Colors.white, fontSize: 17.sp),
              ),
              SizedBox(height: 3.h),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white)),
                  onPressed: () async {

                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/googleLogo.png',
                        height: 14.sp,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Google',
                        style: TextStyle(
                            color: Color(0xffFF324BCD), fontSize: 10.sp),
                      ),
                    ],
                  ),
                ),
              ),
              // SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
