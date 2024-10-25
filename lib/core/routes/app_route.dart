import 'package:flutter/material.dart';
import 'package:gs_grocery/core/routes/routes.dart';
import 'package:gs_grocery/features/auth/presentation/screens/login_screen.dart';
import 'package:gs_grocery/features/auth/presentation/screens/register_screen.dart';
import 'package:gs_grocery/features/onbordeing_screens/preentation/screens/page_view.dart';

import '../../features/auth/presentation/screens/forget_password_screen.dart';
import '../../features/auth/presentation/screens/verification_screen.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => Onboarding1(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (_) => const RegisterScreen(),
        );
      case Routes.forgetPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => const ForgetPasswordScreen(),
        );
      case Routes.otpVerificationScreen:
        return MaterialPageRoute(
          builder: (_) => const VerificationScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                'No Routes defined for ${setting.name}',
              ),
            ),
          ),
        );
    }
  }
}
