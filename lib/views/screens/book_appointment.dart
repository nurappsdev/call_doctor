import 'package:doctor/doctor.dart';
import 'package:doctor/views/widgets/custom_buttons.dart';
import 'package:doctor/views/widgets/custom_images.dart';
import 'package:doctor/views/widgets/horizontal_list_view_widget.dart';
import 'package:get/get.dart';

// class BookAppointmentScreen extends StatelessWidget {
//   BookAppointmentScreen({Key? key}) : super(key: key);

//   // final BookAppointmentScreenController controller =
//   //     GetControllers.instance.getBookAppointmentScreenController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.white2,
//       body: SafeArea(
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 16.w),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 stackWidget(),
//                 SizedBox(
//                   height: 16.h,
//                 ),
//                 cricketerButton(),
//                 SizedBox(
//                   height: 16.h,
//                 ),
//                 Text(
//                   "Dr. Shakib Al Hasan",
//                   style:
//                       AppTextStyles.medium20.copyWith(color: AppColors.black1),
//                 ),
//                 SizedBox(
//                   height: 24.h,
//                 ),
//                 SizedBox(
//                   height: 16.h,
//                 ),
//                 bioData(),
//                 SizedBox(
//                   height: 40.h,
//                 ),
//                 Container(
//                   width: AppSize.width,
//                   height: 122.h,
//                   decoration: BoxDecoration(
//                     color: AppColors.white,
//                     borderRadius: BorderRadius.circular(5),
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         "Available",
//                         style: AppTextStyles.semiBold20
//                             .copyWith(color: AppColors.black1),
//                       ),
//                       SizedBox(
//                         height: 16.h,
//                       ),
//                       HorizontalListViewWidget(
//                         itemCount: 7,
//                         itemBuilder: (itemBuilder, index) {
//                           return dayAndDateWidget();
//                         },
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: 18.h,
//                 ),
//                 bookRequestWidget(),
//                 SizedBox(
//                   height: 24.h,
//                 ),
//                 timeEST(),
//                 SizedBox(
//                   height: 123.h,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// Widget bioData() {
//   return Container(
//     alignment: Alignment.center,
//     width: AppSize.width,
//     //height: 145.h,
//     color: AppColors.white,
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           "BIO",
//           style: AppTextStyles.semiBold20.copyWith(color: AppColors.black1),
//         ),
//         SizedBox(
//           height: 16.h,
//         ),
//         Text(
//           textAlign: TextAlign.start,
//           //  "Chris Kattan - Actor/Comedian. From Saturday Night Live , Night at the Roxbury , Corky Romano, and the Middle!",
//           "Listen deeply emphasizes the importance of active and attentive listening in the doctor-patient relationship. It signifies the need for doctors to genuinely understand their patients' concerns, symptoms, and medical history. By listening attentively, doctors can gather crucial information that aids in accurate diagnoses and effective treatment plans",
//           style: AppTextStyles.regular16.copyWith(color: AppColors.black1),
//         ),
//       ],
//     ),
//   );
// }

// Widget timeEST() {
//   return Container(
//     height: 104.h,
//     width: AppSize.width,
//     decoration: BoxDecoration(
//       color: AppColors.white,
//       borderRadius: BorderRadius.circular(5),
//     ),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text(
//           "Time ( EST )",
//           style: AppTextStyles.semiBold20.copyWith(color: AppColors.black1),
//         ),
//         SizedBox(
//           height: 16.h,
//         ),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 8.0),
//           child: HorizontalListViewWidget(
//             itemCount: 4,
//             itemBuilder: (itemBuilder, index) {
//               return timeButton();
//             },
//           ),
//         ),
//       ],
//     ),
//   );
// }

// Widget stackWidget() {
//   return Stack(
//     children: [
//       Column(
//         children: [
//           // Container(
//           //   height: 268.h,
//           //   width: AppSize.width,
//           //   color: AppColors.blue,
//           // ),
//           CustomImages.normal(
//               source: AppImages.doctor1, height: 380.h, width: AppSize.width),
//         ],
//       ),
//       Positioned(
//         child: Padding(
//           padding: EdgeInsets.all(16.w),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                 child: GestureDetector(
//                   // onTap: () {
//                   //   Get.to(() => RecommendedForYouScreen());
//                   // },
//                   child: CustomImages.svg(
//                       source: AppIcons.back,
//                       color: AppColors.red,
//                       height: 24.h,
//                       width: 24.w),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                 child: CustomImages.svg(
//                     source: AppIcons.favourite,
//                     color: AppColors.red,
//                     height: 24.h,
//                     width: 24.w),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ],
//   );
// }

// Widget timeButton() {
//   return Padding(
//     padding: const EdgeInsets.symmetric(horizontal: 8),
//     child: Container(
//       // alignment: Alignment.center,
//       width: 80.w,
//       height: 31.h,

//       decoration: BoxDecoration(
//         color: AppColors.white,
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Center(
//         child: Text(
//           "12:30 pm",
//           style: AppTextStyles.semiBold14.copyWith(color: AppColors.black1),
//         ),
//       ),
//     ),
//   );
// }

// Widget dayAndDateWidget() {
//   return Padding(
//     padding: const EdgeInsets.symmetric(horizontal: 4.0),
//     child: Container(
//       height: 48.h,
//       width: 40.w,
//       color: AppColors.white,
//       child: Column(
//         children: [
//           Text(
//             "Sat",
//             style: AppTextStyles.regular14.copyWith(color: AppColors.black1),
//           ),
//           Text(
//             "20",
//             style: AppTextStyles.medium16.copyWith(color: AppColors.black),
//           ),
//         ],
//       ),
//     ),
//   );
// }

// Widget cricketerButton() {
//   return Padding(
//     padding: const EdgeInsets.symmetric(horizontal: 8.0),
//     child: Container(
//       // alignment: Alignment.center,
//       width: 80.w,
//       height: 31.h,

//       decoration: BoxDecoration(
//         color: AppColors.red1,
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Center(
//         child: Text(
//           " Doctor",
//           style: AppTextStyles.semiBold14.copyWith(color: AppColors.orange),
//         ),
//       ),
//     ),
//   );
// }

// Widget bookRequestWidget() {
//   return Container(
//     width: AppSize.width,
//     height: 112.h,
//     color: AppColors.white,
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(
//               "5 Minitues",
//               style: AppTextStyles.regular24.copyWith(color: AppColors.grey),
//             ),
//             Text(
//               "\$100",
//               style: AppTextStyles.semiBold20.copyWith(color: AppColors.black1),
//             ),
//           ],
//         ),
//         SizedBox(
//           height: 24.h,
//         ),
//         Container(
//           height: 56,
//           width: AppSize.width,
//           decoration: BoxDecoration(
//             color: AppColors.orange,
//             borderRadius: BorderRadius.circular(100),
//           ),
//           child: Center(
//             child: Text(
//               "Book Request",
//               style: AppTextStyles.bold16.copyWith(color: AppColors.white),
//             ),
//           ),
//         )
//       ],
//     ),
//   );
// }

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
              "Dr. Shakib",
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
              "Doctor",
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
              // padding: EdgeInsets.symmetric(horizontal: 16.w),
              name: 'Book Request',
              onPressed: () {
                //Get.to(() => AppointmentSubmitScreen());
              }),
        ],
      ),
    );
  }
}
