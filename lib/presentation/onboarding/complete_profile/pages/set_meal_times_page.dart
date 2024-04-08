import 'package:flutter/material.dart';
import 'package:nutrimate/domain/core/value_objects/app_strings.dart';
import 'package:nutrimate/presentation/core/theme/theme.dart';
import 'package:nutrimate/presentation/core/widgets/custom_app_bar.dart';
import 'package:nutrimate/presentation/core/widgets/custom_button.dart';
import 'package:nutrimate/presentation/global/spaces.dart';
import 'package:nutrimate/presentation/global/text_themes.dart';
import 'package:nutrimate/presentation/onboarding/complete_profile/widgets/select_meal_times_widget.dart';
import 'package:nutrimate/presentation/router/routes.dart';

class SetMealTimesPage extends StatelessWidget {
  const SetMealTimesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: CustomAppBar(
          showBackButton: true,
          trailingWidget: Text(
            skipText,
            style: normalSize18Text(
              AppColors.primaryColor,
            ),
          ),
          onBackButtonPressed: () {
            Navigator.pushNamed(context, Routes.setBasicInfo);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                howManyMealsQuestion,
                style: boldSize20Text(
                  AppColors.blackColor,
                ),
              ),
              Text(
                chooseMoreSuitableOption,
                style: normalSize16Text(
                  AppColors.blackColor,
                ),
              ),
              mediumVerticalSizedBox,
              // select meal time widget
              const SelectMealTimesWidget(),
              size100VerticalSizedBox,
              SizedBox(
                height: 48,
                width: double.infinity,
                child: CustomButton(
                  onPressed: () {},
                  fillColor: AppColors.primaryColor,
                  customBorderRadius: 25,
                  customChild: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        continueText,
                        style: mediumSize20Text(
                          AppColors.whiteColor,
                        ),
                      ),
                      const Icon(
                        Icons.chevron_right_sharp,
                        color: AppColors.whiteColor,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
