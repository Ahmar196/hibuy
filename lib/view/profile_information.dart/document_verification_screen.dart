import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hibuy/res/app_string/app_string.dart';
import 'package:hibuy/res/assets/image_assets.dart';
import 'package:hibuy/res/colors/app_color.dart';
import 'package:hibuy/res/media_querry/media_query.dart';
import 'package:hibuy/res/routes/routes_name.dart';
import 'package:hibuy/res/text_style.dart';
import 'package:hibuy/widgets/profile_widget.dart/app_bar.dart';
import 'package:hibuy/widgets/profile_widget.dart/button.dart';
import 'package:hibuy/widgets/profile_widget.dart/id_image.dart';

import 'package:hibuy/widgets/profile_widget.dart/text_field.dart';

class DocumentVerificationScreen extends StatelessWidget {
  const DocumentVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const CustomAppBar(
        title: AppStrings.DocumentVerification,
        previousPageTitle: "Back",
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: context.widthPct(0.043), // ~16px
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: context.heightPct(0.018)), // ~20px
              Text(
              AppStrings.shophome,
              style: AppTextStyles.bodyRegular(context),
            ),
            SizedBox(height: context.heightPct(0.012)),
             const ReusableImageContainer(
              imagePath: ImageAssets.profileimage,
              widthFactor: 0.9, // 90% of screen width
              heightFactor: 0.25, // 25% of screen height
            ),

            SizedBox(height: context.heightPct(0.02)), // ~15px
            Text(
              AppStrings.shopvideo,
              style: AppTextStyles.bodyRegular(context),
            ),
            SizedBox(height: context.heightPct(0.012)),
            const ReusableImageContainer(
              imagePath: ImageAssets.profileimage,
              widthFactor: 0.9,
              heightFactor: 0.25,
            ),
            SizedBox(height: context.heightPct(12/812),),
            const ReusableTextField(
              hintText: AppStrings.select,
              labelText: AppStrings.country,
              trailingIcon: Icons.expand_more,
            ),
            SizedBox(height: context.heightPct(0.015)),
            const ReusableTextField(
              hintText: AppStrings.select,
              labelText: AppStrings.provinceregion,
              trailingIcon: Icons.expand_more,
            ),
            SizedBox(height: context.heightPct(0.015)),
            const ReusableTextField(
              hintText: AppStrings.select,
              labelText: AppStrings.city,
              trailingIcon: Icons.expand_more,
            ),
           
          
           

            SizedBox(height: context.heightPct(0.03)), // ~24px
            ReusableButton(
              text: "Done",
              onPressed: () {
                Navigator.pushNamed(context, RoutesName.BankAccountVerification);
              },
            ),
            SizedBox(height: context.heightPct(0.05)), // ~40px
          ],
        ),
      ),
    );
  
  }
}