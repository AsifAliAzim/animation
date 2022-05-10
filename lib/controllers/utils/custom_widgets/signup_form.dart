import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logo/controllers/utils/custom_widgets/app_buttons.dart';
import 'package:logo/controllers/utils/custom_widgets/app_textfields.dart';
import 'package:logo/controllers/utils/form_controllers.dart';

import '../../../models/app_colors.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 0.7.sh,
      width: 1.sw,
      padding: EdgeInsets.only(
        left: 50.sp,
        right: 50.sp,
      ),
      margin: EdgeInsets.only(
        top: 400.sp,
        left: 40.sp,
        right: 45.sp,
      ),
      child: Column(
        children: [
          Expanded(
            flex: 6,
            child: Align(
              alignment: Alignment.topLeft,
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
              controller: FormControllers.signUpNameController,
              action: TextInputAction.next,
              inputType: TextInputType.name,
              hintText: 'Name',
              suffixIcon: Icons.account_circle,
            ),
          ),
          Expanded(
            flex: 1,
            child: Divider(
              thickness: 3.sp,
              color: AppColors.grey,
            ),
          ),
          Expanded(
            flex: 3,
            child: AppTextFields.customTextField(
              controller: FormControllers.signUpEmailController,
              action: TextInputAction.next,
              inputType: TextInputType.emailAddress,
              hintText: 'Email',
              suffixIcon: Icons.email,
            ),
          ),
          Expanded(
            flex: 1,
            child: Divider(
              thickness: 3.sp,
              color: AppColors.grey,
            ),
          ),
          Expanded(
            flex: 3,
            child: AppTextFields.customTextField(
              controller: FormControllers.signUpPasswordController,
              action: TextInputAction.next,
              inputType: TextInputType.visiblePassword,
              hintText: 'Password',
              suffixIcon: Icons.key_rounded,
            ),
          ),
          Expanded(
            flex: 1,
            child: Divider(
              thickness: 3.sp,
              color: AppColors.grey,
            ),
          ),
          Expanded(
            flex: 3,
            child: AppTextFields.customTextField(
              controller: FormControllers.signUpConformPasswordController,
              action: TextInputAction.done,
              inputType: TextInputType.visiblePassword,
              hintText: 'Confirm password',
              suffixIcon: Icons.key_rounded,
            ),
          ),
          Expanded(
            flex: 1,
            child: Divider(
              thickness: 3.sp,
              color: AppColors.grey,
            ),
          ),
          const Expanded(
            flex: 5,
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}
