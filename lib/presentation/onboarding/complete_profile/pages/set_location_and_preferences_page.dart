import 'package:flutter/material.dart';
import 'package:nutrimate/application/core/services/utils.dart';
import 'package:nutrimate/domain/core/value_objects/app_strings.dart';
import 'package:nutrimate/presentation/core/theme/theme.dart';
import 'package:nutrimate/presentation/core/widgets/custom_app_bar.dart';
import 'package:nutrimate/presentation/core/widgets/custom_button.dart';
import 'package:nutrimate/presentation/core/widgets/custom_select_field.dart';
import 'package:nutrimate/presentation/core/widgets/custom_text_field.dart';
import 'package:nutrimate/presentation/global/spaces.dart';
import 'package:nutrimate/presentation/global/text_themes.dart';
import 'package:nutrimate/presentation/router/routes.dart';

class SetLocationAndPreferencesPage extends StatefulWidget {
  const SetLocationAndPreferencesPage({super.key});

  @override
  State<SetLocationAndPreferencesPage> createState() =>
      _SetLocationAndPreferencesPageState();
}

class _SetLocationAndPreferencesPageState
    extends State<SetLocationAndPreferencesPage> {
  final TextEditingController searchController = TextEditingController();
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
            Navigator.pushNamed(context, Routes.setMealTimes);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              mediumVerticalSizedBox,
              Text(
                currentLocationQuestion,
                style: boldSize20Text(
                  AppColors.blackColor,
                ),
              ),
              Text(
                specifyLocationText,
                style: normalSize16Text(
                  AppColors.blackColor,
                ),
              ),
              mediumVerticalSizedBox,
              CustomTextField(
                controller: searchController,
                hintText: searchText,
                borderColor: AppColors.primaryColor,
                suffixIcon: const Icon(Icons.search),
                onTap: () {},
              ),
              mediumVerticalSizedBox,
              Text(
                dietaryPreferencesQuestion,
                style: normalSize16Text(
                  AppColors.blackColor,
                ),
              ),
              smallVerticalSizedBox,
              CustomSelectField(
                items: dietaryPreferences,
                hintText: selectString,
                decoration: InputDecoration(
                  contentPadding: EdgeInsetsGeometry.lerp(
                    const EdgeInsets.all(10),
                    const EdgeInsets.all(10.5),
                    10,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(
                      color: AppColors.primaryColor,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(
                      color: AppColors.primaryColor,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(
                      color: AppColors.primaryColor,
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(
                      color: AppColors.redColor,
                    ),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(
                      color: AppColors.redColor,
                    ),
                  ),
                ),
                onChanged: (String? newValue) {},
              ),
              size70VerticalSizedBox,
              SizedBox(
                height: 48,
                width: double.infinity,
                child: CustomButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      Routes.setLocationAndPreferences,
                    );
                  },
                  fillColor: AppColors.primaryColor,
                  customBorderRadius: 25,
                  customChild: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        continueText,
                        style: normalSize18Text(
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
