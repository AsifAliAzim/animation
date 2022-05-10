

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logo/controllers/utils/custom_widgets/app_textfields.dart';
import 'package:logo/controllers/utils/form_controllers.dart';

import '../../../models/app_colors.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.pureWhite,
      height: 0.55.sh,
      width: 1.sw,
      padding: EdgeInsets.only(
        left: 50.sp,
        right: 50.sp,
      ),
      margin: EdgeInsets.only(
        left: 40.sp,
        right: 45.sp,
      ),
      child: Column(
        children: [
          Expanded(
            flex: 11,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'LOGO',
                style: GoogleFonts.hind(
                  color: Colors.grey.shade600,
                  fontSize: 125.sp,
                  fontWeight: FontWeight.w400,
                  letterSpacing: -1.sp,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: AppTextFields.customTextField(
              controller: FormControllers.loginEmailController,
              action: TextInputAction.next,
              inputType: TextInputType.emailAddress,
              hintText: 'Email',
              suffixIcon: Icons.email,
            ),
          ),
          Expanded(
            flex: 2,
            child: Divider(
              thickness: 3.sp,
              color: AppColors.grey,
            ),
          ),
          Expanded(
            flex: 3,
            child: AppTextFields.customTextField(
              controller: FormControllers.loginPasswordController,
              action: TextInputAction.done,
              inputType: TextInputType.visiblePassword,
              hintText: 'Password',
              suffixIcon: Icons.key_rounded,
            ),
          ),
          Expanded(
            flex: 2,
            child: Divider(
              thickness: 3.sp,
              color: AppColors.grey,
            ),
          ),
          const Expanded(
            flex: 1,
            child: SizedBox(),
          ),
          Expanded(
            flex: 3,
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Forgot Password?',
                style: GoogleFonts.hind(
                  color: Colors.grey.shade300,
                  fontSize: 40.sp,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -1.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
