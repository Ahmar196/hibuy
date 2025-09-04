import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hibuy/res/assets/image_assets.dart';
import 'package:hibuy/res/colors/app_color.dart';
import 'package:hibuy/res/media_querry/media_query.dart';
import 'package:hibuy/res/routes/routes_name.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate after 3 seconds
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, RoutesName.select_type);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Center(
          child: Image.asset(
            ImageAssets.app_logo,
            height: context.heightPct(0.25),
            width: context.widthPct(0.5), // fixed width
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
