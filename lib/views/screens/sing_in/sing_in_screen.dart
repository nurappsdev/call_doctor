import 'package:doctor/doctor.dart';
import 'package:doctor/views/screens/home/home_screen.dart';
import 'package:doctor/views/screens/registration/registration_screen.dart';
import 'package:doctor/views/widgets/custom_buttons.dart';
import 'package:doctor/views/widgets/custom_images.dart';

// import 'package:get/get.dart';

class SingInScreen extends StatelessWidget {
  static const String routeName = "/singin";
  SingInScreen({Key? key}) : super(key: key);

  // final SingInScreenController controller =
  //     GetControllers.instance.getSingInScreenController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white3,
      appBar: AppAppBarStyles.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImages.normal(
                  source: AppLogos.appLogo, height: 196.h, width: 224.w),
              SizedBox(height: 32.h),
              Text(
                'Welcome Back!',
                style: AppTextStyles.bold32.copyWith(color: AppColors.black),
              ),
              SizedBox(height: 8.h),
              Text(
                'Lon In your Account',
                style:
                    AppTextStyles.regular16.copyWith(color: AppColors.black1),
              ),
              SizedBox(height: 40.h),
              AppTextFieldStyles.textWithIcon(
                  hint: 'Email / Number', icon: AppIcons.profile),
              SizedBox(height: 24.h),
              AppTextFieldStyles.passwordWithIcon(
                  hint: 'Password', icon: AppIcons.privacy),
              SizedBox(height: 18.h),
              Text(
                'Forgot Password?',
                style:
                    AppTextStyles.semiBold16.copyWith(color: AppColors.black),
              ),
              SizedBox(height: 42.h),
              CustomButtons.fill(
                  name: 'Log In',
                  onPressed: () {
                    Navigator.pushNamed(context, "/homepage");
                    // Get.to(() => HomeScreen());
                  }),
              SizedBox(height: 32.h),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/regScreen");
                },
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Don’t have an account?',
                        style: AppTextStyles.regular16
                            .copyWith(color: AppColors.black1),
                      ),
                      TextSpan(
                        text: ' Registration',
                        style:
                            AppTextStyles.bold16.copyWith(color: AppColors.red),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
