import 'package:doctor/views/widgets/custom_images.dart';
import 'package:flutter/material.dart';
import 'package:doctor/doctor.dart';

class CanceledScreen extends StatelessWidget {
  const CanceledScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    style: AppTextStyles.semiBold14
                        .copyWith(color: AppColors.black),
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
                  border: Border.all(color: AppColors.red),
                ),
                child: Row(
                  children: [
                    Text(
                      'Pending',
                      style: AppTextStyles.regular14
                          .copyWith(color: AppColors.red),
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
}
