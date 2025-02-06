// features/splash/splash_screen.dart
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:task1/core/functions/navigation.dart';
import 'package:task1/core/utils/colors.dart';
import 'package:task1/features/home/presentation/view/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      pushReplacement(context, HomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    Size mediaquery = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/images/splash.json',
            ),
            CircularProgressIndicator(
              color: AppColors.redColor,
              backgroundColor: AppColors.grayColor,
              strokeWidth: mediaquery.height * 0.007,
              strokeAlign: mediaquery.height * 0.002,
            ),
          ],
        ),
      ),
    );
  }
}
