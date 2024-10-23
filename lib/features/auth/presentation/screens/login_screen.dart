import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gs_grocery/core/common/widgets/app_button_widget.dart';
import 'package:gs_grocery/core/extension/context_extension.dart';
import 'package:gs_grocery/core/routes/routes.dart';
import 'package:gs_grocery/core/styles/colors/app_color.dart';
import 'package:gs_grocery/core/utils/spacing.dart';
import 'package:gs_grocery/features/auth/presentation/screens/widgets/helper_text_widget.dart';
import 'package:gs_grocery/features/auth/presentation/screens/widgets/welcome_text_widget.dart';

import '../../../../core/common/widgets/app_text_feild.dart';
import '../../../../core/common/widgets/arrow_icon_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121223),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ArrowBackWidget(),
            const WelcomeTextWidget(
              text: 'Login Screen',
            ),
            verticalSpace(6),
            const HelperTextWidget(
              text: 'Please ,login in your existing account',
            ),
            verticalSpace(24),
            Expanded(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.r),
                    topRight: Radius.circular(30.r),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 36),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        AppTextField(
                          hintText: 'Email',
                          onChanged: (value) {},
                          onFieldSubmitted: (value) {},
                          textEditingController: TextEditingController(),
                          title: 'Email',
                          validator: (value) {},
                        ),
                        verticalSpace(24),
                        AppTextField(
                          hintText: 'Password',
                          onChanged: (value) {},
                          onFieldSubmitted: (value) {},
                          textEditingController: TextEditingController(),
                          title: 'Password',
                          validator: (value) {},
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Forget Password?',
                              style: TextStyle(
                                color: AppColors.primaryColor,
                              ),
                            ),
                          ),
                        ),
                        verticalSpace(24),
                        AppButtonWidget(
                          onTap: () {},
                          title: 'Register',
                        ),
                        verticalSpace(12),
                        InkWell(
                          onTap: () => context.pushName(Routes.registerScreen),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Don\'t have an account? ',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(0.6),
                                    fontSize: 16,
                                  ),
                                ),
                                const TextSpan(
                                  text: 'Sign Up',
                                  style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        verticalSpace(20),
                        const Text(
                          'Or',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                        verticalSpace(20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                FontAwesomeIcons.facebook,
                                color: Colors.blue,
                                size: 48.sp,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                FontAwesomeIcons.google,
                                color: Colors.red,
                                size: 48.sp,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                FontAwesomeIcons.apple,
                                color: Colors.black,
                                size: 48.sp,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
