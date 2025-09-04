import 'package:flutter/material.dart';
import 'package:hibuy/res/app_string/app_string.dart';
import 'package:hibuy/res/assets/image_assets.dart';
import 'package:hibuy/res/colors/app_color.dart';
import 'package:hibuy/res/media_querry/media_query.dart';
import 'package:hibuy/res/routes/routes_name.dart';
import 'package:hibuy/res/text_style.dart';
import 'package:hibuy/widgets/profile_widget.dart/profile_image.dart';
import 'package:hibuy/widgets/profile_widget.dart/app_bar.dart';
import 'package:hibuy/widgets/profile_widget.dart/button.dart';
import 'package:hibuy/widgets/profile_widget.dart/id_image.dart';
import 'package:hibuy/widgets/profile_widget.dart/text_field.dart';

class PersonalInfoScreen extends StatelessWidget {
  const PersonalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const CustomAppBar(
        title: AppStrings.PersonalInformation,
        previousPageTitle: "Back",
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: context.widthPct(0.043), // ~16px
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: context.heightPct(0.025)), // ~20px
            // ✅ Profile Image
            const Center(
              child: ReusableCircleImage(
                imagePath: ImageAssets.profileimage,
                sizeFactor: 0.28, // responsive (adjust if needed)
              ),
            ),

            SizedBox(height: context.heightPct(0.03)), // ~25px
            const ReusableTextField(
              hintText: AppStrings.enterhere,
              labelText: AppStrings.fullname,
            ),
            SizedBox(height: context.heightPct(0.015)), // ~11px
            const ReusableTextField(
              hintText: AppStrings.enterhere,
              labelText: AppStrings.address,
            ),
            SizedBox(height: context.heightPct(0.015)),
            const ReusableTextField(
              hintText: AppStrings.enterhere,
              labelText: AppStrings.city,
            ),
            SizedBox(height: context.heightPct(0.015)),
            const ReusableTextField(
              hintText: AppStrings.enterhere,
              labelText: AppStrings.country,
            ),
            SizedBox(height: context.heightPct(0.015)),
            const ReusableTextField(
              hintText: AppStrings.enterhere,
              labelText: AppStrings.cnic,
            ),

            SizedBox(height: context.heightPct(0.015)),
            Text(
              AppStrings.cnicFrontImage,
              style: AppTextStyles.bodyRegular(context),
            ),
            SizedBox(height: context.heightPct(0.012)), // ~10px
            const ReusableImageContainer(
              imagePath: ImageAssets.profileimage,
              widthFactor: 0.9, // 90% of screen width
              heightFactor: 0.25, // 25% of screen height
            ),

            SizedBox(height: context.heightPct(0.02)), // ~15px
            Text(
              AppStrings.cnicBackImage,
              style: AppTextStyles.bodyRegular(context),
            ),
            SizedBox(height: context.heightPct(0.012)),
            const ReusableImageContainer(
              imagePath: ImageAssets.profileimage,
              widthFactor: 0.9,
              heightFactor: 0.25,
            ),

            SizedBox(height: context.heightPct(0.03)), // ~24px
            ReusableButton(
              text: "Done",
              onPressed: () {
                Navigator.pushNamed(context, RoutesName.MyStoreInformation);
              },
            ),
            SizedBox(height: context.heightPct(0.05)), // ~40px
          ],
        ),
      ),
    );
  }
}
