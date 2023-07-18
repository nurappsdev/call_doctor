import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:doctor/doctor.dart';

class CustomImages {
  CustomImages._();

  static Widget normal(
      {required String source,
      double? width,
      double? height,
      double? radius,
      EdgeInsetsGeometry? padding,
      BoxFit? fit}) {
    return Container(
      padding: padding,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius ?? 0.0),
      ),
      child: Image.asset(
        source,
        width: width,
        height: height,
        fit: fit,
      ),
    );
  }

  static Widget network(
      {required String source,
      double? width,
      double? height,
      double? radius,
      EdgeInsetsGeometry? padding,
      BoxFit? fit}) {
    if (source.isEmpty) {
      return Padding(
        padding: padding ?? EdgeInsets.zero,
        child: Container(
          width: width ?? double.maxFinite,
          height: height ?? 150.h,
          decoration: BoxDecoration(
              color: AppColors.white3,
              borderRadius: BorderRadius.circular(radius ?? 8.r)),
        ),
      );
    }
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius ?? 8.r),
        child: CachedNetworkImage(
          imageUrl: source,
          placeholder: (context, url) {
            return Container(
              width: width ?? double.maxFinite,
              height: height ?? 150.h,
              color: AppColors.white3,
            );
          },
          errorWidget: (context, url, error) {
            return Container(
              width: width ?? double.maxFinite,
              height: height ?? 150.h,
              color: AppColors.white3,
            );
          },
          width: width ?? double.maxFinite,
          height: height ?? 150.h,
          fit: fit ?? BoxFit.cover,
        ),
      ),
    );
  }

  static Widget circular(
      {required String source,
      double? width,
      double? height,
      EdgeInsetsGeometry? padding,
      BoxFit? fit}) {
    return normal(
        source: source,
        width: width,
        height: height,
        padding: padding,
        fit: fit,
        radius: 100.0);
  }

  static Widget svg({
    required String source,
    double? width,
    double? height,
    Color? color,
  }) {
    return SvgPicture.asset(
      source,
      height: height ?? 24.h,
      width: width ?? 24.h,
      color: color,
    );
  }
}
