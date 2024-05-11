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

class SetBasicInfoPage extends StatefulWidget {
  const SetBasicInfoPage({super.key});

  @override
  State<SetBasicInfoPage> createState() => _SetBasicInfoPageState();
}

class _SetBasicInfoPageState extends State<SetBasicInfoPage> {
  final TextEditingController genderController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController heightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: CustomAppBar(
          showBackButton: false,
          trailingWidget: Text(
            skipText,
            style: normalSize18Text(
              AppColors.primaryColor,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                fillFieldsText,
                style: boldSize16Text(
                  AppColors.blackColor,
                ),
              ),
              largeVerticalSizedBox,

              // gender
              Text(
                genderText,
                style: normalSize16Text(
                  AppColors.blackColor,
                ),
              ),
              smallVerticalSizedBox,
              CustomSelectField(
                items: genderList(),
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
              largeVerticalSizedBox,

              // age
              Text(
                ageText,
                style: normalSize16Text(
                  AppColors.blackColor,
                ),
              ),
              smallVerticalSizedBox,
              CustomTextField(
                controller: ageController,
                hintText: '',
                borderColor: AppColors.primaryColor,
              ),
              largeVerticalSizedBox,

              // weight
              Text(
                '$weightText (kg)',
                style: normalSize16Text(
                  AppColors.blackColor,
                ),
              ),
              smallVerticalSizedBox,
              CustomTextField(
                controller: weightController,
                hintText: '',
                borderColor: AppColors.primaryColor,
              ),
              largeVerticalSizedBox,

              // height
              Text(
                '$heightText (cm)',
                style: normalSize16Text(
                  AppColors.blackColor,
                ),
              ),
              smallVerticalSizedBox,
              CustomTextField(
                controller: heightController,
                hintText: '',
                borderColor: AppColors.primaryColor,
              ),
              size100VerticalSizedBox,
              SizedBox(
                height: 48,
                width: double.infinity,
                child: CustomButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.setMealTimes);
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
