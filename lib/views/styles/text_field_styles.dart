import 'package:doctor/doctor.dart';
import 'package:doctor/views/widgets/custom_buttons.dart';
import 'package:doctor/views/widgets/custom_images.dart';
import 'package:doctor/views/widgets/expand_widget.dart';

class AppTextFieldStyles {
  AppTextFieldStyles._();

  static Widget _baseTextFormFieldWidget({
    required String hint,
    String? errorMassage,
    TextInputType? keyboardType,
    TextEditingController? controller,
    bool enable = true,
    TextAlign? textAlign,
    List<TextInputFormatter>? inputFormatters,
    FormFieldValidator? validator,
    GestureTapCallback? onTap,
    Widget? suffixWidget,
    Widget? prefixWidget,
    bool obscureText = false,
    ValueChanged<String>? onChanged,
    BoxConstraints? suffixWidgetConstraints,
    BoxConstraints? prefixWidgetConstraints,
    TextStyle? textStyle,
    int? maxLines,
    int? minLines,
  }) {
    return TextFormField(
      readOnly: !enable,
      controller: controller,
      keyboardType: keyboardType ?? TextInputType.text,
      cursorColor: AppColors.black,
      style: textStyle ??
          AppTextStyles.medium16.copyWith(
            color: AppColors.black,
          ),
      textAlign: textAlign ?? TextAlign.start,
      obscureText: obscureText,
      maxLines: maxLines,
      minLines: minLines,
      decoration: InputDecoration(
        suffixIcon: suffixWidget,
        prefixIcon: prefixWidget,
        suffixIconConstraints:
            suffixWidgetConstraints ?? BoxConstraints.loose(Size(24.h, 24.h)),
        prefixIconConstraints:
            prefixWidgetConstraints ?? BoxConstraints.loose(Size(24.h, 24.h)),
        isDense: true,
        hintText: hint,
        hintStyle: AppTextStyles.regular14.copyWith(
          color: AppColors.grey,
        ),
        fillColor: AppColors.white2,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.r),
          borderSide: BorderSide(color: AppColors.transparent, width: 0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.r),
          borderSide: BorderSide(color: AppColors.transparent, width: 0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.r),
          borderSide: BorderSide(color: AppColors.transparent, width: 0),
        ),
      ),
      inputFormatters: inputFormatters,
      onTap: onTap,
      onChanged: onChanged,
      validator: validator ??
          (value) {
            String massage = 'Please enter $hint';
            if (errorMassage != null) {
              massage = errorMassage;
            }

            if (value != null) {
              if (value.isEmpty) {
                return massage;
              }
            }
            return null;
          },
    );
  }

  static Widget text(
      {required String hint,
      TextEditingController? controller,
      bool enable = true,
      TextAlign? textAlign,
      FormFieldValidator? validator}) {
    return _baseTextFormFieldWidget(
      hint: hint,
      validator: validator,
      textAlign: textAlign,
      keyboardType: TextInputType.text,
      enable: enable,
      controller: controller,
    );
  }

  static Widget textWithIcon(
      {required String hint,
      required String icon,
      TextEditingController? controller,
      bool enable = true,
      TextAlign? textAlign,
      FormFieldValidator? validator}) {
    return _baseTextFormFieldWidget(
      prefixWidgetConstraints:
          BoxConstraints.tightFor(width: 45.w, height: 18.h),
      hint: hint,
      prefixWidget: CustomImages.svg(
          source: icon, height: 24.h, width: 24.h, color: AppColors.grey),
      validator: validator,
      textAlign: textAlign,
      keyboardType: TextInputType.text,
      enable: enable,
      controller: controller,
    );
  }

  static Widget multiline(
      {required String hint,
      TextEditingController? controller,
      bool enable = true,
      TextAlign? textAlign,
      int? maxLines,
      int? minLines,
      FormFieldValidator? validator}) {
    return _baseTextFormFieldWidget(
      hint: hint,
      validator: validator,
      textAlign: textAlign,
      keyboardType: TextInputType.multiline,
      enable: enable,
      controller: controller,
      maxLines: maxLines,
      minLines: minLines ?? maxLines,
    );
  }

  static Widget number(
      {required String hint,
      TextEditingController? controller,
      bool enable = true,
      TextAlign? textAlign,
      FormFieldValidator? validator}) {
    return _baseTextFormFieldWidget(
      hint: hint,
      validator: validator,
      textAlign: textAlign,
      keyboardType: TextInputType.number,
      enable: enable,
      controller: controller,
    );
  }

  static Widget email({
    required String hint,
    TextEditingController? controller,
    bool enable = true,
    TextAlign? textAlign,
  }) {
    return _baseTextFormFieldWidget(
      hint: hint,
      controller: controller,
      enable: enable,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value != null) {
          if (value.isEmpty) {
            return 'Please enter your email';
          } else {
            final RegExp emailRegex = RegExp(
                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
            if (!emailRegex.hasMatch(value)) {
              return 'Please enter a valid email';
            }
          }
        }

        return null;
      },
    );
  }

  static Widget emailWithIcons({
    required String hint,
    required String icon,
    TextEditingController? controller,
    bool enable = true,
    TextAlign? textAlign,
  }) {
    return _baseTextFormFieldWidget(
      hint: hint,
      controller: controller,
      enable: enable,
      keyboardType: TextInputType.emailAddress,
      prefixWidgetConstraints:
          BoxConstraints.tightFor(width: 45.w, height: 18.h),
      validator: (value) {
        if (value != null) {
          if (value.isEmpty) {
            return 'Please enter your email';
          } else {
            final RegExp emailRegex = RegExp(
                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
            if (!emailRegex.hasMatch(value)) {
              return 'Please enter a valid email';
            }
          }
        }

        return null;
      },
    );
  }

  static Widget password({
    required String hint,
    String? errorMassage,
    TextEditingController? controller,
    bool enable = true,
    TextAlign? textAlign,
    FormFieldValidator? validator,
    bool showPassword = false,
  }) {
    ValueNotifier<bool> passwordStatus = ValueNotifier(showPassword);

    return ValueListenableBuilder(
      valueListenable: passwordStatus,
      builder: (context, value, child) {
        return _baseTextFormFieldWidget(
          maxLines: 1,
          obscureText: value,
          controller: controller,
          errorMassage: errorMassage,
          textAlign: textAlign,
          hint: hint,
          enable: enable,
          suffixWidgetConstraints:
              BoxConstraints.tightFor(width: 45.w, height: 18.h),
          suffixWidget: InkWell(
            onTap: () {
              passwordStatus.value = !value;
            },
            child: Icon(
              value == false
                  ? Icons.visibility_rounded
                  : Icons.visibility_off_rounded,
              color: AppColors.grey,
            ),
          ),
          validator: validator ??
              (value) {
                String massage = 'Please enter $hint';
                if (errorMassage != null) {
                  massage = errorMassage;
                }

                if (value != null) {
                  if (value.isEmpty) {
                    return massage;
                  }
                }
                return null;
              },
        );
      },
    );
  }

  static Widget passwordWithIcon({
    required String hint,
    required String icon,
    String? errorMassage,
    TextEditingController? controller,
    bool enable = true,
    TextAlign? textAlign,
    FormFieldValidator? validator,
    bool showPassword = false,
  }) {
    ValueNotifier<bool> passwordStatus = ValueNotifier(showPassword);

    return ValueListenableBuilder(
      valueListenable: passwordStatus,
      builder: (context, value, child) {
        return _baseTextFormFieldWidget(
          prefixWidget: CustomImages.svg(
              source: icon, height: 24.h, width: 24.h, color: AppColors.grey),
          prefixWidgetConstraints:
              BoxConstraints.tightFor(width: 45.w, height: 18.h),
          maxLines: 1,
          obscureText: value,
          controller: controller,
          errorMassage: errorMassage,
          textAlign: textAlign,
          hint: hint,
          enable: enable,
          suffixWidgetConstraints:
              BoxConstraints.tightFor(width: 45.w, height: 18.h),
          suffixWidget: InkWell(
            onTap: () {
              passwordStatus.value = !value;
            },
            child: Icon(
              value == false
                  ? Icons.visibility_rounded
                  : Icons.visibility_off_rounded,
              color: AppColors.grey,
            ),
          ),
          validator: validator ??
              (value) {
                String massage = 'Please enter $hint';
                if (errorMassage != null) {
                  massage = errorMassage;
                }

                if (value != null) {
                  if (value.isEmpty) {
                    return massage;
                  }
                }
                return null;
              },
        );
      },
    );
  }

  static Widget mobileNumber({
    required String hint,
    TextEditingController? controller,
    bool enable = true,
  }) {
    return _baseTextFormFieldWidget(
      hint: hint,
      controller: controller,
      enable: enable,
      keyboardType: TextInputType.phone,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'\d')),
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(11),
      ],
      validator: (value) {
        if (value != null) {
          if (value.isEmpty) {
            return 'Please enter mobile number';
          } else {
            final numberWithOutCountryCode = value.replaceAll('+88', '');
            final numberOperatorCode = numberWithOutCountryCode.substring(0, 3);
            final pattern = RegExp(r'^(011|013|014|015|016|017|018|019)');
            if (pattern.hasMatch(numberOperatorCode) == false) {
              return 'Please enter a valid number';
            }
            if (numberWithOutCountryCode.length != 11) {
              return 'Please enter a valid number';
            }
          }
        }

        return null;
      },
    );
  }

  static Widget mobileNumberWithIcon({
    required String hint,
    required String icon,
    TextEditingController? controller,
    bool enable = true,
  }) {
    return _baseTextFormFieldWidget(
      hint: hint,
      prefixWidget: CustomImages.svg(
          source: icon, height: 24.h, width: 24.h, color: AppColors.grey),
      prefixWidgetConstraints:
          BoxConstraints.tightFor(width: 45.w, height: 18.h),
      controller: controller,
      enable: enable,
      keyboardType: TextInputType.phone,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'\d')),
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(11),
      ],
      validator: (value) {
        if (value != null) {
          if (value.isEmpty) {
            return 'Please enter mobile number';
          } else {
            final numberWithOutCountryCode = value.replaceAll('+88', '');
            final numberOperatorCode = numberWithOutCountryCode.substring(0, 3);
            final pattern = RegExp(r'^(011|013|014|015|016|017|018|019)');
            if (pattern.hasMatch(numberOperatorCode) == false) {
              return 'Please enter a valid number';
            }
            if (numberWithOutCountryCode.length != 11) {
              return 'Please enter a valid number';
            }
          }
        }

        return null;
      },
    );
  }

  static Widget selectable({
    required String hint,
    required List<String> option,
    TextEditingController? controller,
    bool enable = false,
    TextAlign? textAlign,
    FormFieldValidator? validator,
    ValueChanged<String>? onChanged,
    ValueChanged<int>? onTap,
  }) {
    final thisController = controller ?? TextEditingController();

    final ValueNotifier<bool> expand = ValueNotifier(false);

    return ValueListenableBuilder(
      valueListenable: expand,
      builder: (context, value, child) {
        return Column(
          children: [
            _baseTextFormFieldWidget(
              hint: hint,
              validator: validator,
              textAlign: textAlign,
              keyboardType: TextInputType.text,
              enable: enable,
              controller: thisController,
              // textStyle: AppTextStyles.body2.copyWith(
              //    color: AppColors.blue,
              // ),
              onChanged: onChanged,
              suffixWidgetConstraints:
                  BoxConstraints.tightFor(width: 45.w, height: 18.h),
              suffixWidget: InkWell(
                onTap: () {
                  expand.value = !expand.value;
                  FocusScope.of(context).unfocus();
                },
                child: AnimatedRotation(
                  duration: const Duration(milliseconds: 700),
                  curve: Curves.fastOutSlowIn,
                  turns: value ? -0.75 : -0.25,
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: AppColors.black,
                    size: 18.h,
                  ),
                ),
              ),
            ),
            ExpandWidget(
              expand: value,
              child: Column(
                children: [
                  SizedBox(height: 6.h),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: AppColors.white3.withOpacity(0.6),
                    ),
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      itemCount: option.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            CustomButtons.widget(
                              onPressed: () {
                                thisController.text = option[index];
                                expand.value = false;

                                if (onChanged != null) {
                                  onChanged(option[index]);
                                }
                                if (onTap != null) {
                                  onTap(index);
                                }
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 12.h),
                                alignment: Alignment.center,
                                child: Text(
                                  option[index],
                                  style: AppTextStyles.regular14.copyWith(),
                                ),
                              ),
                            ),
                            Visibility(
                              visible:
                                  (index + 1) == option.length ? false : true,
                              child: Container(
                                height: 1.2.h,
                                width: AppSize.width,
                                clipBehavior: Clip.hardEdge,
                                decoration: BoxDecoration(
                                  color: AppColors.black.withOpacity(0.04),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                margin: EdgeInsets.symmetric(horizontal: 16.w),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
