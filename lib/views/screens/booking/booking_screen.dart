import 'package:doctor/doctor.dart';
import 'package:doctor/views/widgets/custom_images.dart';

// import 'package:get/get.dart';

import 'components/canceled_screen.dart';
import 'components/completed_screen.dart';
import 'components/confirm_screen.dart';
import 'components/pending_screen.dart';

class BookingScreen extends StatelessWidget {
  BookingScreen({Key? key}) : super(key: key);

  // final BookingScreenController controller =
  //     GetControllers.instance.getBookingScreenController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white3,
      appBar: AppAppBarStyles.white,
      body: SafeArea(
        child: DefaultTabController(
          length: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Text("Bookings", style: AppTextStyles.semiBold20),
              ),
              SizedBox(height: 16.h),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: AppColors.white2),
                    color: AppColors.white,
                  ),
                  child: Column(
                    children: [
                      TabBar(
                        indicatorColor: AppColors.red,
                        indicatorWeight: 4.h,
                        padding: EdgeInsets.zero,
                        labelPadding: EdgeInsets.zero,
                        labelColor: AppColors.red,
                        unselectedLabelColor: AppColors.black.withOpacity(0.5),
                        labelStyle: AppTextStyles.semiBold16,
                        unselectedLabelStyle: AppTextStyles.regular14,
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
                      const Expanded(
                        child: TabBarView(
                          children: [
                            ConfirmScreen(),
                            PendingScreen(),
                            CompletedScreen(),
                            CanceledScreen(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
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
