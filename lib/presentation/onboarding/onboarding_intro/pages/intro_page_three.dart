import 'package:flutter/material.dart';
import 'package:nutrimate/domain/core/value_objects/app_strings.dart';
import 'package:nutrimate/domain/core/value_objects/asset_strings.dart';
import 'package:nutrimate/presentation/core/theme/theme.dart';
import 'package:nutrimate/presentation/global/spaces.dart';
import 'package:nutrimate/presentation/global/text_themes.dart';

class IntroPageThree extends StatelessWidget {
  const IntroPageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(introScreenThreeImagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            bottom: 150,
            left: 30,
            right: 30,
            child: Column(
              children: <Widget>[
                Text(
                  introPageThreeText,
                  style: boldSize24Text(AppColors.whiteColor),
                ),
                smallVerticalSizedBox,
                Text(
                  textAlign: TextAlign.center,
                  introPageThreeDesc,
                  style: normalSize17Text(AppColors.whiteColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
