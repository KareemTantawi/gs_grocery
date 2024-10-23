import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gs_grocery/core/routes/app_route.dart';

import 'core/routes/routes.dart';

class GcGrocery extends StatelessWidget {
  GcGrocery({super.key, required this.appRouter});
  AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: Scaffold(),
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.registerScreen,
      ),
    );
  }
}
