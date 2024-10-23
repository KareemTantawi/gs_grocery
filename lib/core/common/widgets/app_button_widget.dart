import 'package:flutter/material.dart';

class AppButtonWidget extends StatelessWidget {
  const AppButtonWidget({
    super.key,
    required this.onTap,
    required this.title,
  });
  final Function() onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      splashColor: const Color(0x0C101828),
      onTap: onTap,
      child: Container(
          width: double.infinity,
          height: 50,
          decoration: ShapeDecoration(
            gradient: const LinearGradient(
              begin: Alignment(-0.89, -0.45),
              end: Alignment(0.89, 0.45),
              colors: [
                Color(0xFFEF5F00),
                Color(0xFFEC9455),
              ],
            ),
            shape: RoundedRectangleBorder(
              // side: const BorderSide(width: 1, color: Color(0xFFEF5F00)),
              borderRadius: BorderRadius.circular(12),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x0C101828),
                blurRadius: 2,
                offset: Offset(0, 1),
                spreadRadius: 0,
              )
            ],
          ),
          child: Center(
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                // height: 0.09,
              ),
            ),
          )),
    );
  }
}
