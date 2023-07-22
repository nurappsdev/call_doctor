import 'package:doctor/views/widgets/celebrity_widget.dart';
import 'package:doctor/views/widgets/custom_buttons.dart';
import 'package:doctor/views/widgets/title_bar_widget.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:doctor/doctor.dart';
// import 'package:get/get.dart';

class RecentViewedScreen extends StatelessWidget {
  RecentViewedScreen({Key? key}) : super(key: key);

  // final RecentViewedScreenController controller =
  //     GetControllers.instance.getRecentViewedScreenController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white3,
      appBar: AppAppBarStyles.white,
      body: SafeArea(
        child: TitleBarWidget(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          title: 'Recent Viewed',
          child: SingleChildScrollView(
            child: Column(
              children: [
                MasonryGridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  crossAxisCount: 2,
                  mainAxisSpacing: 12.h,
                  crossAxisSpacing: 12.w,
                  itemBuilder: (context, index) {
                    return const CelebrityWidget(
                      type: CelebrityWidgetType.expand,
                    );
                  },
                ),
                SizedBox(height: 24.w),
                CustomButtons.widget(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.r),
                      color: AppColors.red1,
                    ),
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    child: Text(
                      'See More',
                      style:
                          AppTextStyles.bold18.copyWith(color: AppColors.red),
                    ),
                  ),
                ),
                SizedBox(height: 24.w),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
