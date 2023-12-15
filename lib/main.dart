import 'package:bizkit/core/const.dart';
import 'package:bizkit/feature/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    kwidth = MediaQuery.of(context).size.width;
    khieght = MediaQuery.of(context).size.height;
    return ScreenUtilInit(
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'Euclid',
          scaffoldBackgroundColor: kblack,
          textTheme: Theme.of(context).textTheme.apply(
                bodyColor: kwhite,
                displayColor: kwhite,
              ),
        ),
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
      ),
    );
  }
}
