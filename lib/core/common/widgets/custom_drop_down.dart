import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gs_grocery/core/styles/colors/app_color.dart';
import 'package:gs_grocery/core/styles/fonts/font_family_helper.dart';
import 'package:gs_grocery/core/styles/fonts/font_weight_helper.dart';

class CustomCreateDropDown extends StatelessWidget {
  const CustomCreateDropDown({
    required this.items,
    required this.hintText,
    required this.onChanged,
    required this.value,
    super.key,
  });

  final String hintText;
  final List<int> items;
  final ValueChanged<int?> onChanged;
  final int? value;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<int>(
          iconSize: 30,
          borderRadius: BorderRadius.circular(12),
          dropdownColor: Colors.white,
          style: TextStyle(
            color: AppColors.primaryColor,
            fontSize: 14.sp,
            fontWeight: FontWeightHelper.medium,
            fontFamily: FontFamilyHelper.fontFamily1,
          ),
          elevation: 16,
          icon: const Icon(
            Icons.expand_more,
            color: Colors.white,
          ),
          onChanged: onChanged,
          value: items.isNotEmpty ? value : null,
          isExpanded: true,
          hint: Text(
            hintText,
            style: TextStyle(
              color: AppColors.primaryColor,
              fontSize: 14.sp,
              fontWeight: FontWeightHelper.medium,
              fontFamily: FontFamilyHelper.fontFamily1,
            ),
          ),
          items: items.map<DropdownMenuItem<int>>((int value) {
            return DropdownMenuItem<int>(
              value: value,
              child: Text(
                value.toString(),
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeightHelper.medium,
                  fontFamily: FontFamilyHelper.fontFamily1,
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
