import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hibuy/res/media_querry/media_query.dart'; // your extension

class ReusableCircleImage extends StatelessWidget {
  final String imagePath;
  final double? sizeFactor; // 0.0 - 1.0 relative to screen width
  final BoxFit fit;

  const ReusableCircleImage({
    super.key,
    required this.imagePath,
    this.sizeFactor = 0.28, // ~105px on 375 base width
    this.fit = BoxFit.cover,
  });

  @override
  Widget build(BuildContext context) {
    final double size = context.widthPct(sizeFactor!);

    return Container(
      width: size,
      height: size,
      padding: EdgeInsets.symmetric(
        horizontal: context.widthPct(0.005), // ~2px responsive
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFD9D9D9),
        shape: BoxShape.circle,
        border: Border.all(
          color: const Color(0xFFB4B4B4),
          width: context.widthPct(0.001), // ~0.3px
        ),
      ),
      child: ClipOval(
        child: Center(
          child: SizedBox(
            width:context.widthPct(0.113),
            height: context.heightPct(0.0313),
            child: SvgPicture.asset(
              imagePath,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
