import 'package:doctor/views/widgets/custom_buttons.dart';
import 'package:get/get.dart';

import 'package:doctor/doctor.dart';
import 'package:doctor/views/widgets/custom_images.dart';
import 'package:doctor/views/widgets/title_bar_widget.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SaddCardScreen extends StatelessWidget {
  SaddCardScreen({Key? key}) : super(key: key);

  // final SaddCardScreenController controller =
  //     GetControllers.instance.getSaddCardScreenController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: TitleBarWidget(
          title: "Add Credit / Debit Card",
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 32,
                  ),
                  Row(
                    children: [
                      CustomImages.normal(
                          source: AppIcons.visa, width: 64, height: 24),
                      SizedBox(
                        width: 16,
                      ),
                      CustomImages.normal(
                          source: AppIcons.visa1, width: 42, height: 24)
                    ],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Text(
                    "Card Number *",
                    style: AppTextStyles.regular16
                        .copyWith(color: AppColors.black1),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Card Number",
                      hintStyle: AppTextStyles.regular16
                          .copyWith(color: AppColors.grey),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Name On Card *",
                    style: AppTextStyles.regular16
                        .copyWith(color: AppColors.black1),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Card name",
                      hintStyle: AppTextStyles.regular16
                          .copyWith(color: AppColors.grey),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      Text(
                        "Expiration date *",
                        style: AppTextStyles.regular16
                            .copyWith(color: AppColors.black1),
                      ),
                      SizedBox(
                        width: 51.w,
                      ),
                      Text(
                        "CVV *",
                        style: AppTextStyles.regular16
                            .copyWith(color: AppColors.black1),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          keyboardType: TextInputType.datetime,
                          decoration: InputDecoration(
                            hintText: "MM/YY",
                            hintStyle: AppTextStyles.regular16
                                .copyWith(color: AppColors.grey),
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Expanded(
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: "CCV",
                            hintStyle: AppTextStyles.regular16
                                .copyWith(color: AppColors.grey),
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 72.h,
                  ),
                  CustomButtons.fill(
                    color: AppColors.orange,
                    name: 'Save',
                    onPressed: () {
                      // Get.to(
                      //       () => SAddBankScreen(),
                      // );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
