import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/common/widgets/app_button_widget.dart';
import '../../../../core/utils/spacing.dart';

class PageViewBodyWidget extends StatelessWidget {
  const PageViewBodyWidget({
    super.key,
    required this.image,
    required this.title,
    required this.onTap,
    required this.onPressed,
    required this.controller,
  });
  final String image;
  final String title;
  final Function() onTap;
  final Function() onPressed;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 26.h),
      child: Column(
        children: [
          verticalSpace(60),
          Image.asset(
            image,
            height: 260.h,
          ),
          verticalSpace(24),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          verticalSpace(10),
          Text(
            'Get all your loved foods in one once place, you just place the orer we do the rest',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
          verticalSpace(40),
          SmoothPageIndicator(
            controller: controller,
            count: 4,
            effect: ExpandingDotsEffect(
              dotHeight: 8,
              dotWidth: 8,
              activeDotColor: Colors.orange,
              dotColor: Colors.orange.withOpacity(0.3),
              expansionFactor: 3,
              spacing: 8,
            ),
          ),
          verticalSpace(40),
          AppButtonWidget(
            onTap: onTap,
            title: 'Next',
          ),
          verticalSpace(6),
          TextButton(
            onPressed: onPressed,
            child: const Text(
              'Skip',
              style: TextStyle(),
            ),
          ),
        ],
      ),
    );
  }
}
