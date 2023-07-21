import 'package:doctor/views/screens/booking_list/booking_list_screen.dart';
import 'package:doctor/views/screens/booking_list/component/canceled_screen.dart';
import 'package:doctor/views/screens/booking_list/component/completed_screen.dart';
import 'package:doctor/views/screens/booking_list/component/pending_screen.dart';
import 'package:doctor/views/widgets/custom_buttons.dart';
import 'package:get/get.dart';

import 'package:doctor/doctor.dart';
import 'package:doctor/views/widgets/custom_images.dart';
import 'package:doctor/views/widgets/title_bar_widget.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PendignScreen extends StatelessWidget {
  PendignScreen({Key? key}) : super(key: key);

  // final PendignScreenController controller =
  //     GetControllers.instance.getPendignScreenController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              Text(
                "Why do you want to make an Appointment?",
                style:
                    AppTextStyles.semiBold16.copyWith(color: AppColors.black1),
              ),
              const SizedBox(
                height: 16,
              ),
              MasonryGridView.count(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 9,
                crossAxisCount: 3,
                mainAxisSpacing: 8.h,
                crossAxisSpacing: 8.w,
                itemBuilder: (context, index) {
                  return whyAppointment();
                },
              ),
              SizedBox(
                height: 24.h,
              ),
              TextFormField(
                minLines: 2,
                maxLines: 6,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  hintText: "Notes",
                  hintStyle:
                      AppTextStyles.regular16.copyWith(color: AppColors.grey),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              //submitButton(),
              CustomButtons.fill(
                color: AppColors.orange,
                name: 'Submit',
                onPressed: () {
                  Get.to(
                    () => BookingListScreen(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget whyAppointment() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
    child: Container(
      // alignment: Alignment.center,
      width: 80.w,
      height: 31.h,

      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          textAlign: TextAlign.center,
          " Delivary",
          style: AppTextStyles.semiBold14.copyWith(color: AppColors.black1),
        ),
      ),
    ),
  );
}

Widget submitButton() {
  return Container(
    height: 56,
    width: AppSize.width,
    decoration: BoxDecoration(
      color: AppColors.orange,
      borderRadius: BorderRadius.circular(100),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            "Submit",
            style: AppTextStyles.bold16.copyWith(color: AppColors.white),
          ),
        ),
      ],
    ),
  );
}
