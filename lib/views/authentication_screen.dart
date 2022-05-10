import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logo/controllers/cubits/animation_cubit.dart';
import 'package:logo/controllers/utils/custom_classes/second_custom_clip_path.dart';
import 'package:logo/controllers/utils/custom_widgets/app_buttons.dart';
import 'package:logo/controllers/utils/custom_widgets/app_static_methods.dart';
import 'package:logo/controllers/utils/custom_widgets/login_form.dart';
import 'package:logo/controllers/utils/custom_widgets/social_auths.dart';
import 'package:logo/models/app_colors.dart';
import 'package:audioplayers/audioplayers.dart';

import '../controllers/utils/custom_classes/custom_clip_path.dart';
import '../controllers/utils/custom_widgets/signup_form.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {

  switchingAnimation(BuildContext context, bool state){
    if(state){
      Future.delayed(
        const Duration(milliseconds: 600), (){
          final player = AudioCache();
          player.play('mixkit-fast-small-sweep-transition-166.wav');
        context.read<AnimateCubit>()
            .animate(animate: false);
      }
      );
    } else {
      Future.delayed(
          const Duration(milliseconds: 600), (){
        final playerr = AudioCache();
        playerr.play('mixkit-fast-small-sweep-transition-166.wav');
        context.read<AnimateCubit>()
            .animate(animate: true);
      }
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    bool keyboardIsOpened = MediaQuery.of(context).viewInsets.bottom != 0.0;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: BlocBuilder<AnimateCubit, bool>(
          builder: (context, state) {
            return Stack(
              children: [
                Positioned(
                  top: -500.sp,
                  left: -180.sp,
                  child: AppStaticMethods.backgroundContainer(),
                ),
                Positioned(
                  bottom: -150.sp,
                  right: -0.96.sw,
                  child: AppStaticMethods.backgroundContainer(),
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 600),
                  curve: Curves.linear,
                  top: state ? -0.78.sh : 10.sp,
                  left: 5.sp,
                  right: 5.sp,
                  child: CustomPaint(
                    size: Size(1.sw, 0.9.sh),
                    painter: RPSCustomPainterOne(),
                  ),
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 600),
                  curve: Curves.linear,
                  bottom: state ? 0.89.sh : 245.sp,
                  right: 70.sp,
                  child: InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: (){
                      switchingAnimation(context ,state);
                    },
                    child: AppButtons.animationButton(
                        selectedIcon: state ? Icons.arrow_downward_outlined :  Icons.arrow_upward_outlined,
                      selectedColor: AppColors.pink,
                    ),
                  ),
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 600),
                  curve: Curves.linear,
                  top:state ? -1.sh : 60.sp,
                  left: 10.sp,
                  right: 10.sp,
                  child: const LoginForm(),
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 600),
                  curve: Curves.linear,
                  bottom: state ? -1.sh : keyboardIsOpened ? -1.sh :   0.27.sh,
                  left: 10.sp,
                  right: 10.sp,
                  child: AppButtons.authButton(
                    onTopText: 'Login',
                    firstColor: AppColors.red,
                    secondColor: AppColors.pink,
                  ),
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 600),
                  curve: Curves.linear,
                  bottom: state ? 0.750.sh : keyboardIsOpened ? -1.sh : 130.sp,
                  left: state ? 340.sp : 80.sp,
                  child: const SocialAuths(),
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 600),
                  curve: Curves.linear,
                  bottom: state ? 50.sp : keyboardIsOpened ? -1.sh :  -0.73.sh,
                  left: 5.sp,
                  right: 10.sp,
                  child: CustomPaint(
                    size: Size(1.sw,0.9.sh),
                    painter: RPSCustomPainterTwo(),
                  ),
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 600),
                  curve: Curves.linear,
                  top: state ? 290.sp : 0.87.sh,
                  left:  keyboardIsOpened ? -100.sp : 42.sp,
                  child: InkWell(
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: (){
                      switchingAnimation(context ,state);
                    },
                    child: AppButtons.animationButton(
                        selectedIcon: state ? Icons.arrow_downward_outlined :   Icons.arrow_upward_outlined,
                      selectedColor: AppColors.darkOrange,
                    ),
                  ),
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 600),
                  curve: Curves.linear,
                  bottom: state ? 130.sp  : -1.sh,
                  left: 10.sp,
                  right: 10.sp,
                  child: const SignUpForm(),
                ),
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 600),
                  curve: Curves.linear,
                  bottom: state ? 0.06.sh :  -1.sh,
                  left: 10.sp,
                  right: 10.sp,
                  child: AppButtons.authButton(
                    onTopText: 'Signup',
                    firstColor: AppColors.darkOrange,
                    secondColor: AppColors.red,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
