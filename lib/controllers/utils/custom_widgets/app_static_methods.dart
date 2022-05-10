import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../models/app_colors.dart';

class AppStaticMethods {

  static Widget backgroundContainer() {
    return Container(
      height: 0.6.sh,
      width: 0.6.sh,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          colors: [
            AppColors.pink,
            AppColors.lightOrange, //#6D101C
          ],
        ),
      ),
    );
  }



}