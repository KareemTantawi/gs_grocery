import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:gs_grocery/core/styles/images/app_image.dart';

class ArrowIconWidget extends StatelessWidget {
  const ArrowIconWidget({
    super.key,
    required this.onTap,
  });
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: InkWell(
        onTap: onTap,
        child: Image.asset(
          AppImages.arrowIcon,
          height: 24.h,
          width: 24.w,
        ),
      ),
    );
  }
}
