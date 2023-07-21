import 'package:doctor/views/widgets/celebrity_widget.dart';
import 'package:doctor/views/widgets/custom_buttons.dart';
import 'package:doctor/views/widgets/custom_images.dart';
import 'package:doctor/views/widgets/horizontal_list_view_widget.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:doctor/doctor.dart';
// import 'package:star_wish_bd/controllers/home_screen_controller.dart';
// import 'package:star_wish_bd/controllers/get_controllers.dart';
import 'package:get/get.dart';
// import 'package:star_wish_bd/views/widgets/custom_images.dart';
// import 'package:star_wish_bd/views/widgets/celebrity_widget.dart';
// import 'package:star_wish_bd/views/widgets/horizontal_list_view_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  // final HomeScreenController controller =
  //     GetControllers.instance.getHomeScreenController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white3,
      appBar: AppAppBarStyles.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 24.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: AppTextFieldStyles.textWithIcon(
                    hint: 'Search your Celebrities', icon: AppIcons.search),
              ),
              SizedBox(height: 24.h),
              chooseCategoriesWidget(),
              SizedBox(height: 24.h),
              categoryWidget(title: 'Musician'),
              SizedBox(height: 24.h),
              categoryWidget(title: 'Actor'),
              SizedBox(height: 24.h),
              categoryWidget(title: 'Athlete'),
              SizedBox(height: 24.h),
              categoryWidget(title: 'Creator'),
              SizedBox(height: 24.h),
              categoryWidget(title: 'Models'),
              SizedBox(height: 24.h),
              categoryWidget(title: 'Comedian'),
              SizedBox(height: 24.h),
              categoryWidget(title: 'Chefs'),
              SizedBox(height: 24.h),
            ],
          ),
        ),
      ),
    );
  }

  Widget chooseCategoriesWidget() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
        color: AppColors.white,
        border: Border.all(color: AppColors.white2),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Choose Categories',
                  style:
                      AppTextStyles.semiBold20.copyWith(color: AppColors.black),
                ),
              ),
              CustomButtons.widget(
                onPressed: () {
                  //   Get.to(() => CategoriesScreen());
                },
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 6.h, horizontal: 10.w),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.r),
                      border: Border.all(color: AppColors.red)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'See More',
                        style: AppTextStyles.regular14
                            .copyWith(color: AppColors.red),
                      ),
                      SizedBox(width: 8.w),
                      RotatedBox(
                        quarterTurns: -50,
                        child: SvgPicture.asset(
                          AppIcons.back,
                          color: AppColors.red,
                          height: 16.h,
                          width: 16.h,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          MasonryGridView.count(
            shrinkWrap: true,
            itemCount: 4,
            crossAxisCount: 4,
            crossAxisSpacing: 8.w,
            itemBuilder: (context, index) {
              return chooseCategoriesItem();
            },
          ),
        ],
      ),
    );
  }

  Widget chooseCategoriesItem() {
    return CustomButtons.widget(
      onPressed: () {
        //   Get.to(() => CategoriesViewScreen());
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.r),
          color: AppColors.white,
          border: Border.all(color: AppColors.white2),
        ),
        child: Column(
          children: [
            CustomImages.normal(
              source: AppImages.doctor,
              height: 65.h,
              width: AppSize.width,
              fit: BoxFit.fill,
            ),
            SizedBox(height: 8.h),
            Text(
              'Actors',
              style: AppTextStyles.semiBold14.copyWith(color: AppColors.black),
            ),
            SizedBox(height: 8.h),
          ],
        ),
      ),
    );
  }

  Widget categoryWidget({
    required String title,
    Function? onPressed,
  }) {
    return CustomButtons.widget(
      onPressed: () {
        //  Get.to(() => CategoriesViewScreen());
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.r),
          color: AppColors.white,
          border: Border.all(
            color: AppColors.white2,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style: AppTextStyles.semiBold20
                          .copyWith(color: AppColors.black),
                    ),
                  ),
                  CustomButtons.widget(
                    onPressed: () {
                      //  Get.to(() => CategoriesViewScreen());
                    },
                    child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 6.h, horizontal: 10.w),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.r),
                          border: Border.all(color: AppColors.red),
                        ),
                        child: Row(
                          children: [
                            Text(
                              'See More',
                              style: AppTextStyles.regular14
                                  .copyWith(color: AppColors.red),
                            ),
                            SizedBox(width: 8.w),
                            RotatedBox(
                              quarterTurns: -50,
                              child: SvgPicture.asset(
                                AppIcons.back,
                                color: AppColors.red,
                                height: 16.h,
                                width: 16.h,
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            HorizontalListViewWidget(
              padding: EdgeInsets.only(left: 16.w),
              itemCount: 4,
              itemBuilder: (context, index) {
                return const CelebrityWidget(
                  type: CelebrityWidgetType.static,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
