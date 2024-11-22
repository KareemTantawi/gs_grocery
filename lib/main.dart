// import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:gs_grocery/core/routes/app_route.dart';
import 'package:gs_grocery/gc_grocery.dart';

void main() {
  runApp(
    GcGrocery(
      appRouter: AppRouter(),
    ),
  );
}
