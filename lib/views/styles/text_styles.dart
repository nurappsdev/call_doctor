import 'package:doctor/doctor.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle get _bold => TextStyle(
        color: AppColors.black,
        fontFamily: AppFonts.outfitBold,
        fontWeight: FontWeight.w700,
      );

  ///FontSize:- 32
  static TextStyle get bold32 => _bold.copyWith(fontSize: 32.sp);

  ///FontSize:- 24
  static TextStyle get bold24 => _bold.copyWith(fontSize: 24.sp);

  ///FontSize:- 20
  static TextStyle get bold20 => _bold.copyWith(fontSize: 20.sp);

  ///FontSize:- 18
  static TextStyle get bold18 => _bold.copyWith(fontSize: 18.sp);

  ///FontSize:- 16
  static TextStyle get bold16 => _bold.copyWith(fontSize: 16.sp);

  static TextStyle get _semiBold => TextStyle(
        color: AppColors.black,
        fontFamily: AppFonts.outfitSemiBold,
        fontWeight: FontWeight.w600,
      );

  ///FontSize:- 32
  static TextStyle get semiBold32 => _semiBold.copyWith(fontSize: 32.sp);

  ///FontSize:- 28
  static TextStyle get semiBold28 => _semiBold.copyWith(fontSize: 28.sp);

  ///FontSize:- 20
  static TextStyle get semiBold20 => _semiBold.copyWith(fontSize: 20.sp);

  ///FontSize:- 18
  static TextStyle get semiBold18 => _semiBold.copyWith(fontSize: 18.sp);

  ///FontSize:- 16
  static TextStyle get semiBold16 => _semiBold.copyWith(fontSize: 16.sp);

  ///FontSize:- 14
  static TextStyle get semiBold14 => _semiBold.copyWith(fontSize: 14.sp);

  ///FontSize:- 12
  static TextStyle get semiBold12 => _semiBold.copyWith(fontSize: 12.sp);

  static TextStyle get _medium => TextStyle(
        color: AppColors.black,
        fontFamily: AppFonts.outfitMedium,
        fontWeight: FontWeight.w500,
      );

  ///FontSize:- 20
  static TextStyle get medium20 => _medium.copyWith(fontSize: 20.sp);

  ///FontSize:- 16
  static TextStyle get medium16 => _medium.copyWith(fontSize: 16.sp);

  ///FontSize:- 14
  static TextStyle get medium14 => _medium.copyWith(fontSize: 14.sp);

  ///FontSize:- 12
  static TextStyle get medium12 => _medium.copyWith(fontSize: 12.sp);

  ///FontSize:- 10
  static TextStyle get medium10 => _medium.copyWith(fontSize: 10.sp);

  static TextStyle get _regular => TextStyle(
        color: AppColors.black,
        fontFamily: AppFonts.outfitRegular,
        fontWeight: FontWeight.w400,
      );

  ///FontSize:- 24
  static TextStyle get regular24 => _regular.copyWith(fontSize: 24.sp);

  ///FontSize:- 20
  static TextStyle get regular20 => _regular.copyWith(fontSize: 20.sp);

  ///FontSize:- 16
  static TextStyle get regular16 => _regular.copyWith(fontSize: 16.sp);

  ///FontSize:- 14
  static TextStyle get regular14 => _regular.copyWith(fontSize: 14.sp);

  ///FontSize:- 12
  static TextStyle get regular12 => _regular.copyWith(fontSize: 12.sp);

  ///FontSize:- 10
  static TextStyle get regular10 => _regular.copyWith(fontSize: 10.sp);
}
