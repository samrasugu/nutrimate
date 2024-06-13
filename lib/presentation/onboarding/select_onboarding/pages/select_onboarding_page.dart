import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nutrimate/domain/core/value_objects/app_strings.dart';
import 'package:nutrimate/domain/core/value_objects/asset_strings.dart';
import 'package:nutrimate/presentation/core/theme/theme.dart';
import 'package:nutrimate/presentation/core/widgets/custom_button.dart';
import 'package:nutrimate/presentation/global/spaces.dart';
import 'package:nutrimate/presentation/global/text_themes.dart';
import 'package:nutrimate/presentation/router/routes.dart';

class SelectOnboardingPage extends StatelessWidget {
  const SelectOnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                largeVerticalSizedBox,
                Center(
                  child: SvgPicture.asset(
                    selectOnboardingSvgPath,
                    height: 250,
                    width: 250,
                  ),
                ),
                largeVerticalSizedBox,
                Text(
                  textAlign: TextAlign.center,
                  selectOnboardingText,
                  style: normalSize20Text(AppColors.blackColor),
                ),
                largeVerticalSizedBox,
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: CustomButton(
                    fillColor: AppColors.primaryColor,
                    onPressed: () {
                      Navigator.of(context).pushNamed(Routes.login);
                    },
                    customBorderRadius: 25,
                    text: logInWithEmailText,
                    textStyle: normalSize18Text(AppColors.whiteColor),
                  ),
                ),
                largeVerticalSizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      dontHaveAnAccountText,
                      style: normalSize16Text(AppColors.blackColor),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(Routes.signup);
                      },
                      child: Text(
                        signUpText,
                        style: boldSize16Text(AppColors.primaryColor),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
