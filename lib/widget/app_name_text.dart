import 'package:ecommerce_flutter_admin1/widget/title_text.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter/material.dart';

class AppNameTextWidget extends StatelessWidget {
  const AppNameTextWidget({super.key, this.fontSize=30});

  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      period: const Duration(seconds: 22),
      baseColor: Colors.purple,
      highlightColor: Colors.red,
      child: TitleTextWidget(label: "Shop Songul",
        fontSize: fontSize,
      ),

    );
  }
}

