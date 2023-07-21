import 'package:doctor/doctor.dart';
import 'package:doctor/views/widgets/custom_images.dart';
import 'package:doctor/views/widgets/title_bar_widget.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({Key? key}) : super(key: key);

  // final CategoryScreenController controller =
  //     GetControllers.instance.getCategoryScreenController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppAppBarStyles.white,
      body: SafeArea(
        child: Center(
            child: TitleBarWidget(
          title: "Category",
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      // Get.to(() => RecommendedForYouScreen());
                    },
                    child: MasonryGridView.count(
                      shrinkWrap: true,
                      itemCount: 8,
                      crossAxisCount: 4,
                      mainAxisSpacing: 13.h,
                      crossAxisSpacing: 13.w,
                      itemBuilder: (context, index) {
                        return categoryImage();
                      },
                    ),
                  ),
                ),
                const Spacer(),
                CustomImages.normal(
                    source: AppLogos.appLogo, height: 34, width: 34),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  "Doctor Wish Bd 2023",
                  style:
                      AppTextStyles.regular12.copyWith(color: AppColors.black),
                ),
                SizedBox(
                  height: 40.h,
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}

Widget categoryImage() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4.r),
      color: AppColors.white,
    ),
    child: Column(
      children: [
        CustomImages.normal(source: AppImages.doctor, height: 72, width: 72),
        SizedBox(height: 16.h),
        Text(
          'Doctors',
          style: AppTextStyles.semiBold14.copyWith(color: AppColors.black),
        ),
      ],
    ),
  );
}
