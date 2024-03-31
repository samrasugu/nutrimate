import 'package:flutter/material.dart';
import 'package:nutrimate/domain/core/value_objects/app_strings.dart';
import 'package:nutrimate/domain/core/value_objects/asset_strings.dart';
import 'package:nutrimate/presentation/core/theme/theme.dart';
import 'package:nutrimate/presentation/global/spaces.dart';
import 'package:nutrimate/presentation/global/text_themes.dart';

class IntroPageTwo extends StatelessWidget {
  const IntroPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(introScreenTwoImagePath),
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
                  introPageTwoText,
                  style: boldSize24Text(AppColors.whiteColor),
                ),
                smallVerticalSizedBox,
                Text(
                  textAlign: TextAlign.center,
                  introPageTwoDesc,
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
