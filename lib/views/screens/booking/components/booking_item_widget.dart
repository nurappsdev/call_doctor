import 'package:star_wish_bd/star_wish_bd.dart';

class BookingItemWidget extends StatelessWidget {
  final String buttonName;

  const BookingItemWidget({Key? key, required this.buttonName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w),
      child: Column(
        children: [
          SizedBox(height: 12.h),
          Row(
            children: [
              CustomImages.circular(
                source: AppImages.celebrity,
                height: 35.h,
                width: 35.w,
                fit: BoxFit.cover,
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: Text(
                  'Biplob Hossain',
                  style:
                      AppTextStyles.semiBold14.copyWith(color: AppColors.black),
                ),
              ),
              SizedBox(width: 8.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('26/10/23', style: AppTextStyles.regular12),
                  Text('12:00 - 12:05PM', style: AppTextStyles.medium12),
                ],
              ),
              SizedBox(width: 24.w),
              Container(
                padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 8.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.r),
                    border: Border.all(color: AppColors.red)),
                child: Row(
                  children: [
                    Text(
                      buttonName,
                      style: AppTextStyles.regular14
                          .copyWith(color: AppColors.red),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Divider(height: 1.5.h),
        ],
      ),
    );
  }
}
