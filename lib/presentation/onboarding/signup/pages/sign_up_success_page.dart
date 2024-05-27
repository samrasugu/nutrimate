import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nutrimate/domain/core/value_objects/app_strings.dart';
import 'package:nutrimate/domain/core/value_objects/asset_strings.dart';
import 'package:nutrimate/presentation/core/theme/theme.dart';
import 'package:nutrimate/presentation/core/widgets/custom_button.dart';
import 'package:nutrimate/presentation/global/spaces.dart';
import 'package:nutrimate/presentation/global/text_themes.dart';
import 'package:nutrimate/presentation/router/routes.dart';

class SignUpSuccessPage extends StatelessWidget {
  const SignUpSuccessPage({super.key});

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
                    signUpSuccessSvgPath,
                    height: 300,
                    width: 300,
                  ),
                ),
                largeVerticalSizedBox,
                Text(
                  signUpSuccessText,
                  style: boldSize24Text(
                    AppColors.blackColor,
                  ),
                ),
                smallVerticalSizedBox,
                Text(
                  signUpSuccessDesc,
                  style: normalSize16Text(
                    AppColors.greyTextColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                size70VerticalSizedBox,
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: CustomButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(Routes.setBasicInfo);
                    },
                    fillColor: AppColors.primaryColor,
                    customBorderRadius: 20,
                    text: completeProfileText,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
