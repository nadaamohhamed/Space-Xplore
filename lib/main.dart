import 'package:flutter/material.dart';


import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'features/rockets/ui/screens/rocket_details_screen.dart';


import 'package:space_app/features/onboarding/views/onboarding_screen.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:space_app/features/onboarding/screens/onboarding_screen.dart';


void main() {
  runApp(const SpaceApp());
}


class SpaceApp extends StatelessWidget {
  const SpaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: "Orienta"),
        home: OnboardingScreen(),

      ),
    );
  }
}