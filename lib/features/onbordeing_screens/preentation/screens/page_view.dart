import 'package:flutter/material.dart';
import 'package:gs_grocery/core/extension/context_extension.dart';
import 'package:gs_grocery/core/routes/routes.dart';

import '../../../../core/styles/images/app_image.dart';
import '../widgets/page_view_body_widget.dart';

class Onboarding1 extends StatelessWidget {
  Onboarding1({super.key});
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        allowImplicitScrolling: true,
        pageSnapping: true,
        controller: _pageController,
        children: [
          PageViewBodyWidget(
            image: AppImages.onBoarding1,
            controller: _pageController,
            title: 'Get all your loved foods in one place',
            onTap: () {
              _pageController.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            },
            onPressed: () {
              context.pushReplacementNamed(Routes.loginScreen);
            },
          ),
          PageViewBodyWidget(
            image: AppImages.onBoarding2,
            controller: _pageController,
            title: 'Get all your loved foods in one place',
            onTap: () {
              _pageController.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            },
            onPressed: () {
              context.pushReplacementNamed(Routes.loginScreen);
            },
          ),
          PageViewBodyWidget(
            image: AppImages.onBoarding3,
            controller: _pageController,
            title: 'Get all your loved foods in one place',
            onTap: () {
              _pageController.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            },
            onPressed: () {
              context.pushReplacementNamed(Routes.loginScreen);
            },
          ),
          PageViewBodyWidget(
            image: AppImages.onBoarding3,
            controller: _pageController,
            title: 'Get all your loved foods in one place',
            onTap: () {
              // _pageController.nextPage(
              //   duration: const Duration(milliseconds: 500),
              //   curve: Curves.easeInOut,
              // );
              context.pushReplacementNamed(Routes.loginScreen);
            },
            onPressed: () {
              context.pushReplacementNamed(Routes.loginScreen);
            },
          ),
        ],
      ),
    );
  }
}
