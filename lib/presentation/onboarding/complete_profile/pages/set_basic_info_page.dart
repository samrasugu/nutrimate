import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:nutrimate/application/core/services/utils.dart';
import 'package:nutrimate/application/redux/actions/update_complete_profile_state_action.dart';
import 'package:nutrimate/application/redux/states/app_state.dart';
import 'package:nutrimate/application/redux/view_models/connectivity_view_model.dart';
import 'package:nutrimate/domain/core/value_objects/app_strings.dart';
import 'package:nutrimate/domain/core/value_objects/enums.dart';
import 'package:nutrimate/domain/core/value_objects/global_keys.dart';
import 'package:nutrimate/presentation/core/theme/theme.dart';
import 'package:nutrimate/presentation/core/widgets/custom_app_bar.dart';
import 'package:nutrimate/presentation/core/widgets/custom_button.dart';
import 'package:nutrimate/presentation/core/widgets/custom_select_field.dart';
import 'package:nutrimate/presentation/core/widgets/custom_text_field.dart';
import 'package:nutrimate/presentation/global/spaces.dart';
import 'package:nutrimate/presentation/global/text_themes.dart';
import 'package:nutrimate/presentation/onboarding/complete_profile/basic_info_form_manager.dart';
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

  final BasicInfoFormManager _basicInfoFormManager = BasicInfoFormManager();

  Gender? _currentGender;

  @override
  void initState() {
    super.initState();
    _basicInfoFormManager.gender.listen((Gender gender) {
      setState(() {
        _currentGender = genderFromString(gender.name);
      });
    });
  }

  void submit() {
    StoreProvider.dispatch(
      context,
      UpdateCompleteProfileStateAction(
        initialRoute: Routes.setLocation,
        gender: _currentGender,
        age: ageController.text,
        weight: weightController.text,
        height: heightController.text,
      ),
    );

    globalNavigationKey.currentState!.pushNamed(Routes.setLocation);
  }

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
      body: StoreConnector<AppState, ConnectivityViewModel>(
        converter: (Store<AppState> store) {
          return ConnectivityViewModel.fromStore(store);
        },
        builder: (BuildContext context, ConnectivityViewModel vm) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  mediumVerticalSizedBox,
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
                  StreamBuilder<Gender>(
                    stream: _basicInfoFormManager.gender,
                    builder:
                        (BuildContext context, AsyncSnapshot<Gender> snapshot) {
                      return CustomSelectField(
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
                        onChanged: (String? value) {
                          if (value != null) {
                            _basicInfoFormManager.inGender.add(
                              genderFromString(value),
                            );
                          }
                        },
                      );
                    },
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
                  StreamBuilder<String>(
                    stream: _basicInfoFormManager.age,
                    builder:
                        (BuildContext context, AsyncSnapshot<String> snapshot) {
                      return CustomTextField(
                        controller: ageController,
                        hintText: '',
                        borderColor: AppColors.primaryColor,
                        focusedBorderColor: AppColors.primaryColor,
                        onChanged: (String value) {
                          _basicInfoFormManager.inAge.add(value);
                        },
                        validator: (String? value) {
                          if (snapshot.hasError) {
                            return (snapshot.error as UserException).message;
                          }
                          return null;
                        },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                      );
                    },
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
                  StreamBuilder<String>(
                    stream: _basicInfoFormManager.weight,
                    builder:
                        (BuildContext context, AsyncSnapshot<String> snapshot) {
                      return CustomTextField(
                        controller: weightController,
                        hintText: '',
                        borderColor: AppColors.primaryColor,
                        focusedBorderColor: AppColors.primaryColor,
                        onChanged: (String value) {
                          _basicInfoFormManager.inWeight.add(value);
                        },
                        validator: (String? value) {
                          if (snapshot.hasError) {
                            return (snapshot.error as UserException).message;
                          }
                          return null;
                        },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                      );
                    },
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
                  StreamBuilder<String>(
                    stream: _basicInfoFormManager.height,
                    builder:
                        (BuildContext context, AsyncSnapshot<String> snapshot) {
                      return CustomTextField(
                        controller: heightController,
                        hintText: '',
                        borderColor: AppColors.primaryColor,
                        focusedBorderColor: AppColors.primaryColor,
                        onChanged: (String value) {
                          _basicInfoFormManager.inHeight.add(value);
                        },
                        validator: (String? value) {
                          if (snapshot.hasError) {
                            return (snapshot.error as UserException).message;
                          }
                          return null;
                        },
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                      );
                    },
                  ),
                  size70VerticalSizedBox,
                  SizedBox(
                    width: double.infinity,
                    child: StreamBuilder<bool>(
                      stream: _basicInfoFormManager.isFormValid,
                      builder:
                          (BuildContext context, AsyncSnapshot<bool> snapshot) {
                        final bool hasData =
                            snapshot.hasData && snapshot.data != null;
                        return SizedBox(
                          height: 48,
                          child: CustomButton(
                            onPressed: () {
                              if (hasData && snapshot.data!) {
                                submit();
                              } else {
                                ScaffoldMessenger.of(context)
                                  ..hideCurrentSnackBar()
                                  ..showSnackBar(
                                    const SnackBar(
                                      content: Text(
                                        allFieldsRequiredText,
                                      ),
                                    ),
                                  );
                              }
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
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
