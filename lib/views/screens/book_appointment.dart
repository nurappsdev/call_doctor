import 'package:doctor/doctor.dart';
import 'package:doctor/views/screens/registration/registration_screen.dart';
import 'package:doctor/views/widgets/custom_buttons.dart';
import 'package:doctor/views/widgets/custom_images.dart';
import 'package:doctor/views/widgets/horizontal_list_view_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class BookAppointmentScreen extends StatelessWidget {
  BookAppointmentScreen({Key? key}) : super(key: key);

  // final BookAppointmentScreenController controller =
  //     GetControllers.instance.getBookAppointmentScreenController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white3,
      appBar: AppAppBarStyles.transparent,
      extendBodyBehindAppBar: true,
      body: SafeArea(
        top: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headerWidget(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 16.h),
                    nameWidget(),
                    SizedBox(height: 24.h),
                    bioWidget(),
                    SizedBox(height: 24.h),
                    availableWidget(),
                    SizedBox(height: 24.h),
                    durationWidget(),
                    SizedBox(height: 24.h),
                    timeWidget(),
                    SizedBox(height: 24.h),
                    priceAndButtonWidget(),
                    SizedBox(height: 24.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget headerWidget() {
    return Container(
      height: 250.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 32.h),
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                AppImages.doctor,
              ))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomButtons.svgIcon(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              icon: AppIcons.back,
              color: AppColors.white,
              onPressed: () {
                Get.back();
              }),
          const Spacer(),
          CustomButtons.svgIcon(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              icon: AppIcons.favourite,
              color: AppColors.white),
        ],
      ),
    );
  }

  Widget nameWidget() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        children: [
          Expanded(
            child: Text(
              "Shakib Al Hasan",
              style: AppTextStyles.medium20.copyWith(color: AppColors.black1),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            decoration: BoxDecoration(
              color: AppColors.custom('FFF4ED'),
              borderRadius: BorderRadius.circular(100.r),
            ),
            child: Text(
              "Cricketer",
              style: AppTextStyles.semiBold14.copyWith(color: AppColors.red),
            ),
          ),
        ],
      ),
    );
  }

  Widget bioWidget() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColors.white2),
        color: AppColors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "BIO",
            style: AppTextStyles.semiBold20.copyWith(color: AppColors.black1),
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            textAlign: TextAlign.start,
            "Chris Kattan - Actor/Comedian. From Saturday Night Live , Night at the Roxbury , Corky Romano, and the Middle!",
            style: AppTextStyles.regular14.copyWith(color: AppColors.black1),
          ),
        ],
      ),
    );
  }

  Widget availableWidget() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColors.white2),
        color: AppColors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              "Available",
              style: AppTextStyles.semiBold20.copyWith(color: AppColors.black1),
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          HorizontalListViewWidget(
            padding: EdgeInsets.only(left: 16.w),
            itemCount: 7,
            itemBuilder: (itemBuilder, index) {
              return dateTimeItemWidget();
            },
          ),
        ],
      ),
    );
  }

  Widget dateTimeItemWidget() {
    return Container(
      margin: EdgeInsets.only(right: 8.w),
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
        border: Border.all(color: AppColors.white2),
        color: AppColors.white,
      ),
      child: Column(
        children: [
          Text(
            "Sat",
            style: AppTextStyles.regular14.copyWith(color: AppColors.black1),
          ),
          Text(
            "20",
            style: AppTextStyles.medium16.copyWith(color: AppColors.black),
          ),
        ],
      ),
    );
  }

  Widget durationWidget() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColors.white2),
        color: AppColors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              "Duration",
              style: AppTextStyles.semiBold20.copyWith(color: AppColors.black1),
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          HorizontalListViewWidget(
            padding: EdgeInsets.only(left: 16.w),
            itemCount: 7,
            itemBuilder: (itemBuilder, index) {
              return chipWidget('5 Min');
            },
          ),
        ],
      ),
    );
  }

  Widget timeWidget() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColors.white2),
        color: AppColors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Text(
              "Time ( EST )",
              style: AppTextStyles.semiBold20.copyWith(color: AppColors.black1),
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          HorizontalListViewWidget(
            padding: EdgeInsets.only(left: 16.w),
            itemCount: 7,
            itemBuilder: (itemBuilder, index) {
              return chipWidget('12:30 PM');
            },
          ),
        ],
      ),
    );
  }

  Widget chipWidget(String value) {
    return Container(
      margin: EdgeInsets.only(right: 8.w),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.r),
        border: Border.all(color: AppColors.white2),
        color: AppColors.white,
      ),
      child: Text(
        value,
        style: AppTextStyles.semiBold12,
      ),
    );
  }

  Widget priceAndButtonWidget() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
        border: Border.all(color: AppColors.white2),
        color: AppColors.white,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "5 Minutes",
                style: AppTextStyles.regular24.copyWith(color: AppColors.grey),
              ),
              Text(
                "\$100",
                style: AppTextStyles.bold24.copyWith(color: AppColors.black),
              ),
            ],
          ),
          SizedBox(height: 24.h),
          CustomButtons.fill(
              //  padding: EdgeInsets.symmetric(horizontal: 16.w),
              name: 'Book Request',
              onPressed: () {
                Get.to((context) => RegistrationScreen());
              }),
        ],
      ),
    );
  }
}
