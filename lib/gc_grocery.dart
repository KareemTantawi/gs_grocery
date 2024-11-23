import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gs_grocery/core/routes/app_route.dart';

// import './core\routes\app_route.dart';
import 'package:flutter/material.dart';
import 'package:gs_grocery/core/routes/routes.dart';

// ignore: must_be_immutable
class GcGrocery extends StatelessWidget {
  GcGrocery({super.key, required this.appRouter});
  AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
