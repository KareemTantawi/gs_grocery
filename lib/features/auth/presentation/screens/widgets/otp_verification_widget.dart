import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/styles/colors/app_color.dart';

class OTPVerificationWidget extends StatelessWidget {
  final List<TextEditingController> controllers;
  final ValueChanged<String>? onChanged;

  const OTPVerificationWidget({
    super.key,
    required this.controllers,
    required this.onChanged,
  }) : assert(controllers.length == 4, 'Four controllers are required.');

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(4, (index) {
        return _buildOTPField(index, context);
      }),
    );
  }

  Widget _buildOTPField(int index, BuildContext context) {
    return SizedBox(
      width: 55.w,
      height: 60.h,
      child: TextFormField(
        controller: controllers[index],
        onChanged: (value) {
          if (value.length == 1 && index < 3) {
            FocusScope.of(context).nextFocus();
          } else if (value.isEmpty && index > 0) {
            FocusScope.of(context).previousFocus();
          }
          onChanged?.call(value);
        },
        decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            counterText: '',
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(
                color: AppColors.primaryColor,
                width: 2.0,
              ),
            ) // Hide the counter text
            ),
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        maxLength: 1,
      ),
    );
  }
}
