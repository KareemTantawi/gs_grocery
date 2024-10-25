import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gs_grocery/core/common/widgets/app_button_widget.dart';
import 'package:gs_grocery/core/utils/spacing.dart';
import 'package:gs_grocery/features/auth/presentation/screens/widgets/helper_text_widget.dart';
import 'package:gs_grocery/features/auth/presentation/screens/widgets/welcome_text_widget.dart';

import '../../../../core/common/widgets/app_text_feild.dart';
import '../../../../core/common/widgets/arrow_icon_widget.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

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
              text: 'Forget Password',
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
                        verticalSpace(20),
                        AppTextField(
                          hintText: 'Email',
                          onChanged: (value) {},
                          onFieldSubmitted: (value) {},
                          textEditingController: TextEditingController(),
                          title: 'Email',
                          validator: (value) {},
                        ),
                        verticalSpace(24),
                        AppButtonWidget(
                          onTap: () {
                            // context.pushName(Routes.forgetPasswordScreen);
                          },
                          title: 'Send Code',
                        ),
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
