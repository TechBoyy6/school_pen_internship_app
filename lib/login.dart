import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:school_pen/components/custom_button.dart';
import 'package:school_pen/constants/strings.dart';

import 'dart:ui' as ui;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipPath(
              clipper: OvalBottomBorderClipper(),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.45,
                alignment: Alignment.bottomCenter,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppAssets.backDrop),
                    fit: BoxFit.cover,
                  ),
                ),
                child: BackdropFilter(
                  filter: ui.ImageFilter.blur(
                    sigmaX: 2.0,
                    sigmaY: 2.0,
                  ),
                  child: Image.asset(
                    AppAssets.mascot,
                    fit: BoxFit.cover,
                    width: 250,
                    height: 300,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                alignment: Alignment.topLeft,
                AppAssets.brandName2,
                fit: BoxFit.cover,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                AppString.learnEverythingWithAI,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20.0, top: 8),
              child: Text(
                AppString.loginDescription,
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  fontWeight: FontWeight.w400,
                  color: AppColors.lightGrey,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(top: 25.0),
              child: InkWell(
                onTap: () =>
                    Navigator.pushNamed(context, AppRoutes.profileFormPage),
                child: const RoundedButton(
                    text: AppString.getStarted,
                    width: 87,
                    height: 55,
                    bg: AppColors.primary),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: const RoundedButton(
                  text: AppString.joinAsAdmin,
                  width: 87,
                  height: 55,
                  bg: AppColors.primary),
            )
          ],
        ),
      ),
    );
  }
}
