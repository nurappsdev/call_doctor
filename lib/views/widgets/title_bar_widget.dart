import 'package:doctor/views/widgets/custom_buttons.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:doctor/doctor.dart';

class TitleBarWidget extends StatelessWidget {
  final String title;
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final bool showSearch;

  const TitleBarWidget({
    Key? key,
    required this.title,
    required this.child,
    this.padding,
    this.showSearch = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          decoration: BoxDecoration(
            color: AppColors.white3,
          ),
          child: Row(
            children: [
              CustomButtons.svgIcon(
                  icon: AppIcons.back,
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  onPressed: () {
                    Get.back();
                  }),
              SizedBox(width: 16.w),
              Expanded(
                child: Text(title, style: AppTextStyles.semiBold20),
              ),
              Visibility(
                visible: showSearch,
                child: CustomButtons.svgIcon(
                  icon: AppIcons.search,
                  size: 24.h,
                  color: AppColors.black,
                ),
              ),
              SizedBox(width: 8.w),
            ],
          ),
        ),
        SizedBox(height: 12.h),
        Expanded(
          child: Padding(
            padding: padding ?? EdgeInsets.zero,
            child: child,
          ),
        ),
      ],
    );
  }
}
