// main.dart
import 'package:flutter/material.dart';
import 'package:task1/core/services/dio_provider.dart';
import 'package:task1/features/splash/splash_screen.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
  await DioProvider.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
