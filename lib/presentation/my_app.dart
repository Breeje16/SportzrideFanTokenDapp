import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sportzride/presentation/journeys/splash_screen.dart';
import 'package:sportzride/presentation/themes/app_color.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sportzride',
        theme: ThemeData(
          scaffoldBackgroundColor: AppColor.bgMain,
          primaryColor: AppColor.red,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const SplashScreen(),
      ),
      designSize: const Size(375, 812),
    );
  }
}
