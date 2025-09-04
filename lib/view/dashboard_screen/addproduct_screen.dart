import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hibuy/res/app_string/app_string.dart';
import 'package:hibuy/res/assets/image_assets.dart';
import 'package:hibuy/res/colors/app_color.dart';
import 'package:hibuy/res/media_querry/media_query.dart';
import 'package:hibuy/res/text_style.dart';
import 'package:hibuy/widgets/profile_widget.dart/app_bar.dart';
import 'package:hibuy/widgets/profile_widget.dart/text_field.dart';

class AddproductScreen extends StatelessWidget {
  const AddproductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const CustomAppBar(
        title: AppStrings.PersonalInformation,
        previousPageTitle: "Back",
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: context.widthPct(17 / 375),
          right: context.widthPct(17 / 375),
          top: context.heightPct(12 / 812),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.uploadproductimages,
                style: AppTextStyles.medium3(context),
              ),
              SizedBox(height: context.heightPct(7 / 812)),
          
              // ✅ RichText with highlighted span
              RichText(
                text: TextSpan(
                  style: AppTextStyles.regular4(context),
                  children: [
                    const TextSpan(
                      text:
                          "Note: For best quality, upload images with a resolution of ",
                    ),
                    TextSpan(
                      text: "1080 × 1080 pixels",
                      style: AppTextStyles.regular(context),
                    ),
                    const TextSpan(text: "."),
                  ],
                ),
              ),
              SizedBox(height: context.heightPct(10 / 812)),
          
              // ✅ GridView wrapped in Expanded
              Flexible(
                child: GridView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        context.isMobile ? 3 : (context.isTablet ? 4 : 6),
                    crossAxisSpacing: context.widthPct(20 / 375),
                    mainAxisSpacing: context.heightPct(20 / 812),
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      width: context.widthPct(100 / 375),
                      height: context.heightPct(100 / 812),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(
                          context.widthPct(0.027),
                        ),
                        border: Border.all(
                          color: AppColors.stroke,
                          width: context.widthPct(0.0025),
                        ),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          ImageAssets.profileimage,
                          height: context.heightPct(15 / 812),
                          width: context.widthPct(36 / 375),
                        ),
                      ),
                    );
                  },
                ),
              ),
          
              SizedBox(height: context.heightPct(25 / 812)),
          
              // ✅ Custom text field
              ReusableTextField(
                hintText: AppStrings.enterhere,
                labelText: AppStrings.bankname,
              ),
               SizedBox(height: context.heightPct(12 / 812)),
               ReusableTextField(
                hintText: AppStrings.enterhere,
                labelText: AppStrings.bankname,
              ),
                   SizedBox(height: context.heightPct(12 / 812)),
               ReusableTextField(
                hintText: AppStrings.enterhere,
                labelText: AppStrings.bankname,
              ),
               SizedBox(height: context.heightPct(12 / 812)),
               ReusableTextField(
                hintText: AppStrings.select,
                labelText: AppStrings.bankname,
                trailingIcon: Icons.expand_more,
              ),
                     SizedBox(height: context.heightPct(12 / 812)),
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Expanded(
                     child: ReusableTextField(
                      hintText: AppStrings.enterhere,
                      labelText: AppStrings.bankname,
                                 ),
                   ),
                   SizedBox(width: context.widthPct(13 / 812)),
                   Expanded(
                     child: ReusableTextField(
                      hintText: AppStrings.select,
                      labelText: AppStrings.bankname,
                      trailingIcon: Icons.expand_more,
                                 ),
                   ),
                 ],
               ),
          
          
            ],
          ),
        ),
      ),
    );
  }
}
