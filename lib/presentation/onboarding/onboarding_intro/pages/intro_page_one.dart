import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nutrimate/domain/core/value_objects/app_strings.dart';
import 'package:nutrimate/domain/core/value_objects/asset_strings.dart';
import 'package:nutrimate/presentation/core/theme/theme.dart';
import 'package:nutrimate/presentation/global/spaces.dart';
import 'package:nutrimate/presentation/global/text_themes.dart';

class IntroPageOne extends StatelessWidget {
  const IntroPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(introScreenOneImagePath),
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
                  introPageOneText,
                  style: boldSize24Text(AppColors.whiteColor),
                ),
                smallVerticalSizedBox,
                Text(
                  textAlign: TextAlign.center,
                  introPageOneDesc,
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
