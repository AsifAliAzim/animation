import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../models/app_colors.dart';

class AppButtons {
  static Widget authButton({
    required String onTopText,
    required Color firstColor,
    required Color secondColor,
  }) {
    return Container(
      height: 150.sp,
      margin: EdgeInsets.only(
        left: 400.sp,
        right: 100.sp,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          colors: [
            firstColor,
            secondColor,
          ],
        ),
        borderRadius: BorderRadius.circular(100.sp),
        border: Border.all(
          color: AppColors.red,
          width: 3.sp,
        ),
      ),
      child: Center(
        child: Text(
          onTopText,
          style: GoogleFonts.hind(
            color: AppColors.pureWhite,
            fontSize: 65.sp,
            fontWeight: FontWeight.w500,
            letterSpacing: -1.sp,
          ),
        ),
      ),
    );
  }

  static Widget animationButton({
    required IconData selectedIcon,
    required Color selectedColor,
  }) {
    return Container(
      height: 95.sp,
      width: 95.sp,
      decoration: BoxDecoration(
        color: selectedColor,
        shape: BoxShape.circle,
      ),
      child: Icon(
        selectedIcon,
        color: Colors.white,
      ),
    );
  }

  static Widget socialAuthButtons({
    required AlignmentGeometry align,
    required IconData icon,
    required Color color,
    required Color iconColor,
  }) {
    return Align(
      alignment: align,
      child: Container(
        height: 170.sp,
        width: 170.sp,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
        alignment: Alignment.center,
        child: FaIcon(
          icon,
          color: iconColor,
        ),
      ),
    );
  }
}
