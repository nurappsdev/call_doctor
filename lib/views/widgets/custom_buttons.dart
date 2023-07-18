import 'package:doctor/doctor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class CustomButtons {
  CustomButtons._();

  // static Widget back() {
  //   return svgIcon(
  //       icon: AppIcons.back,
  //       padding: EdgeInsets.symmetric(vertical: 16.h),
  //       onPressed: () {
  //         Get.back();
  //       });
  // }

  static Widget fill({
    required String name,
    Function? onPressed,
    Color? color,
    Color? textColor,
    double? height,
    double? width,
    TextStyle? textStyle,
    bool enable = true,
    bool stoke = false,
  }) {
    return ElevatedButton(
      onPressed: () {
        if (!enable) return;
        if (onPressed != null) {
          HapticFeedback.selectionClick();
          onPressed();
        }
      },
      style: AppButtonStyles.flat,
      child: Container(
        width: width ?? AppSize.width,
        height: height ?? 56.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.r),
            // color: enable ? color ?? AppColors.blue : AppColors.blackShade5,
            color: color ?? AppColors.red,
            border: stoke == true ? Border.all(color: AppColors.blue) : null),
        child: Text(
          name,
          style: textStyle ??
              AppTextStyles.bold16
                  .copyWith(color: textColor ?? AppColors.white3),
        ),
      ),
    );
  }

  static Widget fillWithWidget({
    required Widget child,
    Function? onPressed,
    Color? color,
    Color? textColor,
    double? height,
    double? width,
    TextStyle? textStyle,
    bool enable = true,
  }) {
    return ElevatedButton(
      onPressed: () {
        if (!enable) return;
        if (onPressed != null) {
          HapticFeedback.selectionClick();
          onPressed();
        }
      },
      style: AppButtonStyles.flat,
      child: Container(
        width: width ?? AppSize.width,
        height: height ?? 48.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2.r),
          // color: enable ? color ?? AppColors.blue : AppColors.blackShade5,
          color: color ?? AppColors.red,
        ),
        child: child,
      ),
    );
  }

  static Widget icon({
    required IconData icon,
    Function? onPressed,
    double? size,
    Color? color,
    EdgeInsetsGeometry? padding,
  }) {
    return ElevatedButton(
      onPressed: () {
        if (onPressed != null) {
          HapticFeedback.selectionClick();
          onPressed();
        }
      },
      style: AppButtonStyles.flat,
      child: Container(
        padding: padding,
        child: Icon(
          icon,
          size: size ?? 24.h,
          color: color,
        ),
      ),
    );
  }

  static Widget svgIcon({
    required String icon,
    Function? onPressed,
    double? size,
    Color? color,
    EdgeInsetsGeometry? padding,
  }) {
    return ElevatedButton(
      onPressed: () {
        if (onPressed != null) {
          HapticFeedback.selectionClick();
          onPressed();
        }
      },
      style: AppButtonStyles.flat,
      child: Container(
        padding: padding,
        child: SvgPicture.asset(
          icon,
          height: size ?? 24.h,
          width: size ?? 24.h,
          color: color,
        ),
      ),
    );
  }

  static Widget widget({
    Function? onPressed,
    required Widget child,
  }) {
    return ElevatedButton(
      onPressed: () {
        if (onPressed != null) {
          HapticFeedback.selectionClick();
          onPressed();
        }
      },
      style: AppButtonStyles.flat,
      child: child,
    );
  }

  static Widget online({
    required RxBool status,
    required Function(bool status) onchange,
  }) {
    return Obx(() {
      return widget(
        onPressed: () {
          final currentStatus = !status.value;
          status.value = currentStatus;
          onchange(currentStatus);
        },
        child: Container(
          width: 113.w,
          height: 31.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(200), color: AppColors.red),
          child: Stack(
            children: [
              AnimatedOpacity(
                opacity: status.isTrue ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 280),
                child: Row(
                  children: [
                    SizedBox(width: 6.w),
                    const Spacer(),
                  ],
                ),
              ),
              AnimatedOpacity(
                opacity: status.isFalse ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 280),
                child: Row(
                  children: [
                    const Spacer(),
                    SizedBox(width: 6.w),
                  ],
                ),
              ),
              AnimatedContainer(
                width: 113.w,
                height: 31.h,
                alignment: status.isTrue
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                duration: const Duration(milliseconds: 280),
                child: Container(
                  width: 59.h,
                  height: 31.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.red,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
