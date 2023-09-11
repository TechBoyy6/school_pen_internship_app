import 'dart:async';

import 'package:flutter/material.dart';
import 'package:school_pen/constants/strings.dart';
import 'package:school_pen/form.dart';
import 'package:school_pen/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const MainApp(),
    routes: {
      AppRoutes.loginPage: (context) => const LoginScreen(),
      AppRoutes.profileFormPage: (context) => const ProfileFormPage(),
    },
  ));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
        () => Navigator.popAndPushNamed(context, AppRoutes.loginPage));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Image.asset(AppAssets.logo,
                  width: 84, height: 88, fit: BoxFit.cover),
            ),
            Image.asset(AppAssets.brandName, fit: BoxFit.cover),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: CircularProgressIndicator(
                color: AppColors.primary,
              ),
            )
          ],
        ),
      ),
    );
  }
}
