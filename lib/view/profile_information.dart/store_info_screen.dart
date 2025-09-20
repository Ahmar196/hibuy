import 'package:flutter/material.dart';
import 'package:hibuy/res/app_string/app_string.dart';
import 'package:hibuy/res/assets/image_assets.dart';
import 'package:hibuy/res/colors/app_color.dart';
import 'package:hibuy/res/media_querry/media_query.dart';
import 'package:hibuy/res/routes/routes_name.dart';
import 'package:hibuy/res/text_style.dart';
import 'package:hibuy/widgets/profile_widget.dart/app_bar.dart';
import 'package:hibuy/widgets/profile_widget.dart/button.dart';
import 'package:hibuy/widgets/profile_widget.dart/id_image.dart';
import 'package:hibuy/widgets/profile_widget.dart/profile_image.dart';
import 'package:hibuy/widgets/profile_widget.dart/text_field.dart';

class StoreInfoScreen extends StatelessWidget {
  const StoreInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const CustomAppBar(
        title: AppStrings.MyStoreInformation,
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
              labelText: AppStrings.storename,
            ),
            SizedBox(height: context.heightPct(0.015)), // ~11px
            const ReusableTextField(
              hintText: AppStrings.select,
              labelText: AppStrings.SelectStoreType,
              trailingIcon: Icons.expand_more,
            ),
            SizedBox(height: context.heightPct(0.015)),
            const ReusableTextField(
              hintText: AppStrings.enterhere,
              labelText: AppStrings.phoneNo,
            ),
            SizedBox(height: context.heightPct(0.015)),
            const ReusableTextField(
              hintText: AppStrings.enterhere,
              labelText: AppStrings.email,
            ),
            SizedBox(height: context.heightPct(0.015)),
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
            SizedBox(height: context.heightPct(0.015)),
            const ReusableTextField(
              hintText: AppStrings.enterhere,
              labelText: AppStrings.zipcode,
            ),
            SizedBox(height: context.heightPct(0.015)),
            const ReusableTextField(
              hintText: AppStrings.enterhere,
              labelText: AppStrings.address,
            ),
            SizedBox(height: context.heightPct(0.015)),
            const ReusableTextField(
              hintText: AppStrings.select,
              labelText: AppStrings.pinlocation,
              trailingIcon: Icons.location_on,
            ),

            SizedBox(height: context.heightPct(0.03)), // ~24px
            ReusableButton(
              text: "Done",
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RoutesName.DocumentVerification,
                );
              },
            ),
            SizedBox(height: context.heightPct(0.05)), // ~40px
          ],
        ),
      ),
    );
  }
}
