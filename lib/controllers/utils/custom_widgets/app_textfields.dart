import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../models/app_colors.dart';

class AppTextFields {
  static Widget customTextField({
    required TextEditingController controller,
    required TextInputAction action,
    required TextInputType inputType,
    required String hintText,
    required IconData suffixIcon,
  }) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please enter a proper value.';
        }
        return null;
      },
      style: GoogleFonts.montserrat(
        color: AppColors.grey,
      ),
      cursorColor: Colors.black,
      controller: controller,
      textInputAction: action,
      keyboardType: inputType,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.hind(
          color: AppColors.grey,
          fontSize: 50.sp,
          fontWeight: FontWeight.w600,
          letterSpacing: -1.sp,
        ),
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        suffixIcon: Icon(
          suffixIcon,
          color: AppColors.grey,
        ),
      ),
    );
  }
}
