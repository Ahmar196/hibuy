import 'package:flutter/material.dart';
import 'package:hibuy/res/colors/app_color.dart';
import 'package:hibuy/res/media_querry/media_query.dart';
import 'package:hibuy/res/text_style.dart';

/// ✅ Enhanced Reusable Text Field
class ReusableTextField extends StatelessWidget {
  final String hintText;
  final String? labelText;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final IconData? trailingIcon; // optional trailing icon
  final VoidCallback? onIconTap; // optional icon tap action
  final Color? iconColor; 

  const ReusableTextField({
    super.key,
    required this.hintText,
    this.labelText,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.trailingIcon,
    this.onIconTap,
    this.iconColor
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ✅ Label (Optional)
        if (labelText != null) ...[
          Text(
            labelText!,
            style: AppTextStyles.bodyRegular(context),
          ),
          const SizedBox(height: 6),
        ],

        // ✅ TextField Container
        Container(
          width: double.maxFinite, // ~343px
          height: context.heightPct(0.06), // ~46px
          padding: EdgeInsets.symmetric(
            horizontal: context.widthPct(0.043), // ~16px
          ),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(context.widthPct(0.013)), // ~5px
            border: Border.all(color: AppColors.stroke, width: 1),
          ),
          alignment: Alignment.center,
          child: Row(
            children: [
              // ✅ Expanded TextField
              Expanded(
                child: TextField(
                  controller: controller,
                  keyboardType: keyboardType,
                  decoration: InputDecoration(
                    hintText: hintText,
                    border: InputBorder.none,
                    isCollapsed: true, // keeps padding consistent
                  ),
                ),
              ),

              // ✅ Optional Trailing Icon
              if (trailingIcon != null)
                GestureDetector(
                  onTap: onIconTap,
                  child: Icon(
                    trailingIcon,
                    size: context.widthPct(0.05), // responsive size
                    color: AppColors.secondry.withOpacity(0.50),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
