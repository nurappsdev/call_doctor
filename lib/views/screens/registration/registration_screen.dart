import 'package:doctor/doctor.dart';
import 'package:doctor/views/widgets/custom_buttons.dart';
import 'package:doctor/views/widgets/custom_images.dart';

import 'package:get/get.dart';

class RegistrationScreen extends StatelessWidget {
  static const String routeName = "registraton";
  RegistrationScreen({Key? key}) : super(key: key);

  // final RegistrationScreenController controller =
  //     GetControllers.instance.getRegistrationScreenController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white3,
      appBar: AppAppBarStyles.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: CustomImages.svg(
                    source: AppIcons.back,
                  ),
                ),
                Text(
                  'Get Started',
                  style: AppTextStyles.bold32.copyWith(color: AppColors.black),
                ),
                SizedBox(height: 8.h),
                Text(
                  'Create your Account',
                  style: AppTextStyles.regular16.copyWith(
                    color: AppColors.black1,
                  ),
                ),
                SizedBox(height: 24.h),
                selectedWidget(),
                SizedBox(height: 24.h),
                AppTextFieldStyles.textWithIcon(
                  hint: 'Name',
                  icon: AppIcons.profile,
                ),
                SizedBox(height: 24.h),
                AppTextFieldStyles.mobileNumberWithIcon(
                  hint: 'Phone',
                  icon: AppIcons.phone,
                ),
                SizedBox(height: 24.h),
                AppTextFieldStyles.emailWithIcons(
                  hint: 'Email',
                  icon: AppIcons.sms,
                ),
                SizedBox(height: 24.h),
                AppTextFieldStyles.selectable(
                    hint: 'Select Categories', option: []),
                SizedBox(height: 24.h),
                AppTextFieldStyles.passwordWithIcon(
                  hint: 'Password',
                  icon: AppIcons.privacy,
                ),
                SizedBox(height: 24.h),
                AppTextFieldStyles.passwordWithIcon(
                  hint: 'Confirm Password',
                  icon: AppIcons.privacy,
                ),
                SizedBox(height: 40.h),
                CustomButtons.fill(
                  name: 'Registration',
                ),
                SizedBox(height: 32.h),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Already have an account?',
                          style: AppTextStyles.regular16
                              .copyWith(color: AppColors.black1),
                        ),
                        TextSpan(
                          text: 'Sing In',
                          style: AppTextStyles.bold16
                              .copyWith(color: AppColors.red),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget selectedWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.r),
            color: AppColors.red2,
          ),
          padding: EdgeInsets.symmetric(horizontal: 36.w, vertical: 11.h),
          child: Text(
            'pasent',
            style: AppTextStyles.semiBold14.copyWith(color: AppColors.red),
          ),
        ),
        SizedBox(width: 24.w),
        Text(
          'Doctor',
          style: AppTextStyles.medium14.copyWith(color: AppColors.black),
        ),
      ],
    );
  }
}
