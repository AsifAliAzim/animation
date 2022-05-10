import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../models/app_colors.dart';
import '../../cubits/animation_cubit.dart';
import 'app_buttons.dart';

class SocialAuths extends StatelessWidget {
  const SocialAuths({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnimateCubit, bool>(
      builder: (context, state) {
        return Container(
          height: 450.sp,
          width: 0.55.sw,
          color: Colors.transparent,
          child: Column(
            children: [
              Expanded(
                child: AppButtons.socialAuthButtons(
                  align: Alignment.topLeft,
                  icon: FontAwesomeIcons.googlePlusG,
                  color: state ? AppColors.pureWhite : AppColors.googleContainer,
                  iconColor: state ?AppColors.googleContainer : AppColors.pureWhite ,
                ),
              ),
              Expanded(
                child: AppButtons.socialAuthButtons(
                  align: Alignment.center,
                  icon: FontAwesomeIcons.facebookF,
                  color: state ? AppColors.pureWhite : AppColors.facebookContainer,
                  iconColor: state ? AppColors.facebookContainer : AppColors.pureWhite ,
                ),
              ),
              Expanded(
                child: AppButtons.socialAuthButtons(
                  align: Alignment.bottomRight,
                  icon: FontAwesomeIcons.twitter,
                  color: state ? AppColors.pureWhite : AppColors.twitterContainer,
                  iconColor: state ? AppColors.twitterContainer : AppColors.pureWhite ,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
