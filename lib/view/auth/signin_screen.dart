import 'package:flutter/material.dart';
import 'package:hibuy/res/app_string/app_string.dart';
import 'package:hibuy/res/assets/image_assets.dart';
import 'package:hibuy/res/colors/app_color.dart';
import 'package:hibuy/res/media_querry/media_query.dart';
import 'package:hibuy/res/routes/routes_name.dart';
import 'package:hibuy/res/text_style.dart';
import 'package:hibuy/widgets/auth/button.dart';

import 'package:hibuy/widgets/auth/text_field.dart';

class SigninScreen extends StatelessWidget {
  SigninScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: context.widthPct(0.06), // ~22px padding
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// Logo
              SizedBox(height: context.heightPct(0.12)),
              Center(
                child: Image.asset(
                  ImageAssets.app_logo2,
                 
                ),
              ),

              SizedBox(height: context.heightPct(0.018)),

              /// Welcome Text
              Text(
                AppStrings.WelcometoHiBuyO,
                style: AppTextStyles.h4(context),
              ),
              SizedBox(height: context.heightPct(0.01)),
              Text(
                AppStrings.Signintocontinue,
                style: AppTextStyles.bodyRegular(context),
              ),

              SizedBox(height: context.heightPct(0.009)),

              /// Email Field
              CustomTextField(
                hintText: "Email",
                prefixIcon: Icons.email_outlined,
                controller: emailController,
              ),

              SizedBox(height: context.heightPct(0.02)),

              /// Password Field
              CustomTextField(
                hintText: "Password",
                prefixIcon: Icons.lock_outline,
                controller: passwordController,
                isPassword: true,
              ),

              SizedBox(height: context.heightPct(0.018)),

              /// Sign In Button
              PrimaryButton(
                text: AppStrings.signin,
                onPressed: () {
                  debugPrint("Sign In clicked");
                  Navigator.pushNamed(context, RoutesName.KycMain);
                },
              ),

              SizedBox(height: context.heightPct(0.01)),
 /// Divider OR
              Row(
                children: [
                  const Expanded(child: Divider(color: AppColors.stroke)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(AppStrings.ortext,
                        style: AppTextStyles.ortext(context)),
                  ),
                  const Expanded(child: Divider(color: AppColors.stroke)),
                ],
              ),
 SizedBox(height: context.heightPct(0.01)),
              /// Forgot Password
              GestureDetector(
                onTap: () {
                  debugPrint("Forgot Password clicked");
                },
                child: Text(
                  AppStrings.ForgotPassword,
                  style: AppTextStyles.linktext(context)
                ),
              ),

              

             
              SizedBox(height: context.heightPct(0.01)),

              /// Register
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.Donthaveanaccount,
                    style: AppTextStyles.TextSpan(context)
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, RoutesName.SignupScreen); 
                      debugPrint("Register clicked");
                    },
                    child: Text(
                      AppStrings.Register,
                      style:  AppTextStyles.linktext(context)
                    ),
                  ),
                ],
              ),

              SizedBox(height: context.heightPct(0.05)),
            ],
          ),
        ),
      ),
    );
  }
}
