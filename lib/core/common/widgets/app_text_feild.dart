import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gs_grocery/core/styles/colors/app_color.dart';
import 'package:gs_grocery/core/styles/fonts/font_styles.dart';
import 'package:gs_grocery/core/utils/spacing.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.textEditingController,
    required this.onChanged,
    required this.validator,
    required this.title,
    required this.hintText,
    required this.onFieldSubmitted,
    this.obscureText = false,
    this.onPressed,
    this.focusNode,
    this.nextFocusNode,
    this.icon,
    this.textInputAction,
    this.keyboardType,
    this.iconSize = 24,
  });

  final TextEditingController textEditingController;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final String title;
  final String hintText;
  final bool obscureText;
  final void Function(String)? onFieldSubmitted;
  final void Function()? onPressed;
  final IconData? icon;
  final FocusNode? focusNode;
  final FocusNode? nextFocusNode;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyles.font14GreyMedium,
        ),
        verticalSpace(15),
        TextFormField(
          textInputAction: textInputAction,
          keyboardType: keyboardType,
          obscureText: obscureText,
          obscuringCharacter: '*',
          autocorrect: true,
          focusNode: focusNode,
          clipBehavior: Clip.antiAlias,
          controller: textEditingController,
          onFieldSubmitted: (value) {
            onFieldSubmitted?.call(value);
            if (nextFocusNode != null) {
              FocusScope.of(context).requestFocus(nextFocusNode);
            }
          },
          onChanged: onChanged,
          validator: validator,
          // cursorColor: AppColors.primaryColor,
          cursorWidth: 2.w,
          cursorHeight: 22.h,
          cursorColor: Colors.black26,
          style: TextStyles.font16GreyRegular.copyWith(
            height: 1.5.h,
          ),
          decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: onPressed,
              icon: Icon(
                icon,
                size: iconSize,
                // color: AppColors.primaryColor,
              ),
            ),
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Colors.black26,
              fontSize: 16,
            ),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(
                width: 1.w,
                color: const Color(0xFFCFD4DC),
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(
                width: 1.w,
                color: AppColors.errorColor,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(
                width: 1.w,
                color: AppColors.errorColor,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(
                width: 1.w,
                color: const Color(0xFFCFD4DC),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(
                width: 1.w,
                color: const Color(0xFFCFD4DC),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
