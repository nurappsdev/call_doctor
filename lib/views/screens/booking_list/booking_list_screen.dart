import 'package:doctor/views/screens/booking_list/component/canceled_screen.dart';
import 'package:doctor/views/screens/booking_list/component/completed_screen.dart';
import 'package:doctor/views/screens/booking_list/component/pending_screen.dart';
import 'package:get/get.dart';

import 'package:doctor/doctor.dart';
import 'package:doctor/views/widgets/custom_images.dart';
import 'package:doctor/views/widgets/title_bar_widget.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class BookingListScreen extends StatelessWidget {
  BookingListScreen({Key? key}) : super(key: key);

  // final BookingListScreenController controller =
  //     GetControllers.instance.getBookingListScreenController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white3,
      appBar: AppAppBarStyles.white,
      body: SafeArea(
        child: TitleBarWidget(
          title: "Booking Lists",
          child: DefaultTabController(
            length: 4,
            child: Column(
              children: [
                Container(
                  //color: Colors.grey,
                  padding: EdgeInsets.only(top: 5.h),
                  child: Column(
                    children: [
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     CustomImages.svg(
                      //       source: AppIcons.back,
                      //       color: AppColors.white,
                      //       width: 20.h,
                      //       height: 20.h,
                      //     ),
                      //     SizedBox(width: 6.w),
                      //     Text(
                      //       'Matches',
                      //       style: AppTextStyles.regular16
                      //           .copyWith(color: AppColors.white),
                      //     )
                      //   ],
                      // ),
                      SizedBox(height: 16.h),
                      TabBar(
                        indicatorColor: AppColors.red,
                        indicatorWeight: 6,
                        labelColor: AppColors.red,
                        labelStyle: AppTextStyles.regular16
                            .copyWith(color: AppColors.orange),
                        unselectedLabelStyle: AppTextStyles.regular14.copyWith(
                          color: AppColors.red.withOpacity(0.5),
                        ),
                        tabs: const [
                          Tab(
                            text: 'Confirm',
                          ),
                          Tab(
                            text: 'Pending',
                          ),
                          Tab(
                            text: 'Completed',
                          ),
                          Tab(
                            text: 'Canceled',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: 15,
                        itemBuilder: (context, index) {
                          return bookingList();
                        },
                      ),
                      ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: 15,
                        itemBuilder: (context, index) {
                          return const PendingScreen();
                        },
                      ),
                      ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: 15,
                        itemBuilder: (context, index) {
                          return const CompletedScreen();
                        },
                      ),
                      ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: 15,
                        itemBuilder: (context, index) {
                          return const CanceledScreen();
                        },
                      ),

                      // matchItemWidget(),
                      //  matchItemWidget(),
                      // AllMatchesWidget(),
                      // T20MatchesWidget(),
                      // OdiMatchesWidget(),
                      // TestMatchesWidget(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget bookingList() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CustomImages.circular(
                    source: AppImages.celebrity, height: 28.h, width: 28.w),
                SizedBox(width: 8.w),
                Text(
                  'Biplob Hossain',
                  style:
                      AppTextStyles.semiBold14.copyWith(color: AppColors.black),
                ),
                SizedBox(width: 20.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '26/10/23',
                      style: AppTextStyles.regular12
                          .copyWith(color: AppColors.black1),
                    ),
                    Text(
                      '12:00 - 12:05PM',
                      style: AppTextStyles.medium12
                          .copyWith(color: AppColors.black1),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(width: 20.w),
            Container(
              padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 8.w),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.r),
                  border: Border.all(color: AppColors.red)),
              child: Row(
                children: [
                  Text(
                    'View',
                    style:
                        AppTextStyles.regular14.copyWith(color: AppColors.red),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
