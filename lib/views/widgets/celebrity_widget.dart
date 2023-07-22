import 'package:doctor/doctor.dart';
import 'package:doctor/views/screens/book_appointment.dart';
import 'package:doctor/views/widgets/custom_buttons.dart';
import 'package:doctor/views/widgets/custom_images.dart';
// import 'package:get/get.dart';

enum CelebrityWidgetType {
  static,
  expand,
  normal,
}

class CelebrityWidget extends StatelessWidget {
  final CelebrityWidgetType type;

  const CelebrityWidget({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    if (type == CelebrityWidgetType.static) {
      return CustomButtons.widget(
        onPressed: () {
          // Get.to(() => BookAppointmentScreen());
        },
        child: Container(
          width: 120.w,
          margin: EdgeInsets.only(
            right: 12.w,
          ),
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(color: AppColors.white2),
            color: AppColors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImages.normal(
                source: AppImages.doctor,
                height: 90.h,
                width: AppSize.width,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 12.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'AKM Fozlul Haque',
                      style: AppTextStyles.semiBold14
                          .copyWith(color: AppColors.black),
                    ),
                    SizedBox(height: 6.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '1-5Min',
                          style: AppTextStyles.regular12
                              .copyWith(color: AppColors.black1),
                        ),
                        Text(
                          '\$20',
                          style: AppTextStyles.semiBold14
                              .copyWith(color: AppColors.red),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.h),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(vertical: 6.h),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.r),
                          border: Border.all(color: AppColors.red)),
                      child: Text(
                        'Book',
                        style: AppTextStyles.regular14
                            .copyWith(color: AppColors.red),
                      ),
                    ),
                    SizedBox(height: 16.h),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }
    if (type == CelebrityWidgetType.expand) {
      return Expanded(
        child: CustomButtons.widget(
          onPressed: () {
            // Get.to(() => BookAppointmentScreen());
          },
          child: Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(color: AppColors.white2),
              color: AppColors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImages.normal(
                  source: AppImages.doctor,
                  height: 90.h,
                  width: AppSize.width,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 12.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shahrukh Khan',
                        style: AppTextStyles.semiBold14
                            .copyWith(color: AppColors.black),
                      ),
                      SizedBox(height: 6.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '1-5Min',
                            style: AppTextStyles.regular12
                                .copyWith(color: AppColors.black1),
                          ),
                          Text(
                            '\$20',
                            style: AppTextStyles.semiBold14
                                .copyWith(color: AppColors.red),
                          ),
                        ],
                      ),
                      SizedBox(height: 12.h),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(vertical: 6.h),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.r),
                            border: Border.all(color: AppColors.red)),
                        child: Text(
                          'Book',
                          style: AppTextStyles.regular14
                              .copyWith(color: AppColors.red),
                        ),
                      ),
                      SizedBox(height: 16.h),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }
    return CustomButtons.widget(
      onPressed: () {
        // Get.to(() => BookAppointmentScreen());
      },
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: AppColors.white2),
          color: AppColors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImages.normal(
              source: AppImages.doctor,
              height: 90.h,
              width: AppSize.width,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 12.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shahrukh Khan',
                    style: AppTextStyles.semiBold14
                        .copyWith(color: AppColors.black),
                  ),
                  SizedBox(height: 6.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '1-5Min',
                        style: AppTextStyles.regular12
                            .copyWith(color: AppColors.black1),
                      ),
                      Text(
                        '\$20',
                        style: AppTextStyles.semiBold14
                            .copyWith(color: AppColors.red),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.h),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 6.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.r),
                        border: Border.all(color: AppColors.red)),
                    child: Text(
                      'Book',
                      style: AppTextStyles.regular14
                          .copyWith(color: AppColors.red),
                    ),
                  ),
                  SizedBox(height: 16.h),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
