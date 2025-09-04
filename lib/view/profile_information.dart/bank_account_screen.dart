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
import 'package:hibuy/widgets/profile_widget.dart/profile_image.dart';
import 'package:hibuy/widgets/profile_widget.dart/text_field.dart';

class BankAccountScreen extends StatelessWidget {
  const BankAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const CustomAppBar(
        title: AppStrings.BankAccountVerification,
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

            Container(
              width: double.maxFinite,
              height: context.heightPct(0.1),
              padding: EdgeInsets.all(context.widthPct(0.026)),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(context.widthPct(0.04)),
                border: Border.all(
                  width: 2,
                  color: AppColors.profileborder.withOpacity(0.25),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    ImageAssets.kycstatus,
                    height: context.heightPct(60 / 812),
                    width: context.widthPct(60 / 375),
                    fit: BoxFit.contain,
                  ),
                  SizedBox(width: context.widthPct(0.04)),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppStrings.reason,
                          style: AppTextStyles.samibold2(context),
                        ),
                        SizedBox(height: context.heightPct(0.005)),
                        Text(
                          AppStrings.reasontext,
                          style: AppTextStyles.greytext2(context),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: context.heightPct(0.03)), // ~25px

            const ReusableTextField(
              hintText: AppStrings.select,
              labelText: AppStrings.accounttype,
              trailingIcon: Icons.expand_more,
            ),
            SizedBox(height: context.heightPct(0.015)),
            const ReusableTextField(
              hintText: AppStrings.select,
              labelText: AppStrings.bankname,
              trailingIcon: Icons.expand_more,
            ),
            SizedBox(height: context.heightPct(0.015)),
            const ReusableTextField(
              hintText: AppStrings.enterhere,
              labelText: AppStrings.bankname,
            ),
            SizedBox(height: context.heightPct(0.015)), // ~11px
            const ReusableTextField(
              hintText: AppStrings.enterhere,
              labelText: AppStrings.branchcode,
            ),
            SizedBox(height: context.heightPct(0.015)),
            const ReusableTextField(
              hintText: AppStrings.branchname,
              labelText: AppStrings.city,
            ),
            SizedBox(height: context.heightPct(0.015)),
            const ReusableTextField(
              hintText: AppStrings.enterhere,
              labelText: AppStrings.branchphone,
            ),
            SizedBox(height: context.heightPct(0.015)),
            const ReusableTextField(
              hintText: AppStrings.enterhere,
              labelText: AppStrings.accounttitle,
            ),

            SizedBox(height: context.heightPct(0.015)),
            Text(
              AppStrings.canceledcheque,
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
              AppStrings.verificationletter,
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
                Navigator.pushNamed(context, RoutesName.BusinessVerification);
              },
            ),
            SizedBox(height: context.heightPct(0.05)), // ~40px
          ],
        ),
      ),
    );
  }
}
