import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hibuy/res/colors/app_color.dart';
import 'package:hibuy/res/media_querry/media_query.dart'; // your extension

class ReusableImageContainer extends StatelessWidget {
  final String imagePath;
  final double? widthFactor;  // 0.0 - 1.0 responsive width
  final double? heightFactor; // 0.0 - 1.0 responsive height
  final BoxFit fit;

  const ReusableImageContainer({
    super.key,
    required this.imagePath,
    this.widthFactor = 0.9,   // default 90% of screen width
    this.heightFactor = 0.25, // default 25% of screen height
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.widthPct(widthFactor!),   // responsive width
      height: context.heightPct(heightFactor!), // responsive height
      padding: EdgeInsets.symmetric(
        horizontal: context.widthPct(0.005), // ~2px responsive
      ),
      decoration: BoxDecoration(
        color: AppColors.gray,
        borderRadius: BorderRadius.circular(context.widthPct(0.015)), // ~5px
        border: Border.all(
          color:  AppColors.bordercolor,
          width: context.widthPct(0.001), // ~0.3px
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(context.widthPct(0.015)),
        child: Center(
          child: SizedBox(
              width:context.widthPct(0.113),
              height: context.heightPct(0.0313),
            child: SvgPicture.asset(
              imagePath,
              fit: fit,
            ),
          ),
        ),
      ),
    );
  }
}
