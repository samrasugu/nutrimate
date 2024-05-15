import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nutrimate/application/redux/actions/sign_up/sign_up_action.dart';
import 'package:nutrimate/application/redux/flags/flags.dart';
import 'package:nutrimate/application/redux/states/app_state.dart';
import 'package:nutrimate/application/redux/view_models/connectivity_view_model.dart';
import 'package:nutrimate/domain/core/value_objects/app_strings.dart';
import 'package:nutrimate/domain/core/value_objects/asset_strings.dart';
import 'package:nutrimate/presentation/core/theme/theme.dart';
import 'package:nutrimate/presentation/core/widgets/custom_button.dart';
import 'package:nutrimate/presentation/core/widgets/custom_text_field.dart';
import 'package:nutrimate/presentation/global/spaces.dart';
import 'package:nutrimate/presentation/global/text_themes.dart';
import 'package:nutrimate/presentation/global/widgets/platform_loader.dart';
import 'package:nutrimate/presentation/onboarding/signup/sign_up_form_manager.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // final TextEditingController firstNameController = TextEditingController();
  // final TextEditingController lastNameController = TextEditingController();
  // final TextEditingController emailController = TextEditingController();
  // final TextEditingController passwordController = TextEditingController();

  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final SignUpFormManager _signUpFormManager = SignUpFormManager();

  void signUp({required bool hasConnection}) {
    if (hasConnection) {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          const SnackBar(
            content: Text(connectionLostText),
            duration: Duration(seconds: 7),
          ),
        );

      return;
    }

    StoreProvider.dispatch<AppState>(
      context,
      SignUpAction(
        signUpPayload: _signUpFormManager.submit(),
        onSuccess: () {
          // Navigator.of(context).pushNamed(Routes.onboardingIntro);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: StoreConnector<AppState, ConnectivityViewModel>(
          converter: (Store<AppState> store) =>
              ConnectivityViewModel.fromStore(store),
          builder: (BuildContext context, ConnectivityViewModel vm) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        // largeVerticalSizedBox,
                        Center(
                          child: SvgPicture.asset(
                            signUpSvgPath,
                            height: 250,
                            width: 250,
                          ),
                        ),
                        smallVerticalSizedBox,
                        Text(
                          signUpText,
                          style: boldSize24Text(
                            AppColors.blackColor,
                          ),
                        ),
                        largeVerticalSizedBox,
                        StreamBuilder<String>(
                          stream: _signUpFormManager.firstName,
                          builder: (
                            BuildContext context,
                            AsyncSnapshot<String> snapshot,
                          ) {
                            return CustomTextField(
                              // controller: firstNameController,
                              hintText: firstNameString,
                              borderColor: AppColors.primaryColor,
                              focusedBorderColor: AppColors.primaryColor,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.deny(
                                  RegExp(r'\s'),
                                ),
                              ],
                              onChanged: (String val) {
                                _signUpFormManager.inFirstName.add(val);
                              },
                              validator: (String? value) {
                                if (snapshot.hasError) {
                                  return (snapshot.error! as UserException)
                                      .message;
                                }
                                return null;
                              },
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                            );
                          },
                        ),
                        largeVerticalSizedBox,
                        StreamBuilder<String>(
                          stream: _signUpFormManager.lastName,
                          builder: (
                            BuildContext context,
                            AsyncSnapshot<String> snapshot,
                          ) {
                            return CustomTextField(
                              // controller: lastNameController,
                              hintText: lastNameString,
                              borderColor: AppColors.primaryColor,
                              focusedBorderColor: AppColors.primaryColor,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.deny(
                                  RegExp(r'\s'),
                                ),
                              ],
                              onChanged: (String val) {
                                _signUpFormManager.inLastName.add(val);
                              },
                              validator: (String? value) {
                                if (snapshot.hasError) {
                                  return (snapshot.error as UserException)
                                      .message;
                                }
                                return null;
                              },
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                            );
                          },
                        ),
                        largeVerticalSizedBox,
                        StreamBuilder<String>(
                          stream: _signUpFormManager.email,
                          builder: (
                            BuildContext context,
                            AsyncSnapshot<String> snapshot,
                          ) {
                            return CustomTextField(
                              // controller: emailController,
                              hintText: emailString,
                              borderColor: AppColors.primaryColor,
                              focusedBorderColor: AppColors.primaryColor,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.deny(
                                  RegExp(r'\s'),
                                ),
                              ],
                              onChanged: (String value) {
                                _signUpFormManager.inEmail.add(value);
                              },
                              onFieldSubmitted: (String value) {},
                              validator: (String? value) {
                                if (snapshot.hasError) {
                                  return (snapshot.error as UserException)
                                      .message;
                                }
                                return null;
                              },
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                            );
                          },
                        ),
                        largeVerticalSizedBox,
                        StreamBuilder<String>(
                          stream: _signUpFormManager.password,
                          builder: (
                            BuildContext context,
                            AsyncSnapshot<String> snapshot,
                          ) {
                            return CustomTextField(
                              // controller: passwordController,
                              hintText: passwordString,
                              obscureText: true,
                              borderColor: AppColors.primaryColor,
                              focusedBorderColor: AppColors.primaryColor,
                              suffixIcon: const Icon(
                                Icons.visibility,
                                color: AppColors.greyTextColor,
                              ),
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.deny(
                                  RegExp(r'\s'),
                                ),
                              ],
                              onChanged: (String val) {
                                _signUpFormManager.inPassword.add(val);
                              },
                              validator: (String? value) {
                                if (snapshot.hasError) {
                                  return (snapshot.error as UserException)
                                      .message;
                                }
                                return null;
                              },
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                            );
                          },
                        ),
                        size70VerticalSizedBox,
                        SizedBox(
                          width: double.infinity,
                          child: StreamBuilder<bool>(
                            stream: _signUpFormManager.isFormValid,
                            builder: (
                              BuildContext context,
                              AsyncSnapshot<bool> snapshot,
                            ) {
                              final bool hasData =
                                  snapshot.hasData && snapshot.data != null;

                              if (vm.wait.isWaiting(signUpFlag)) {
                                return const PlatformLoader();
                              }
                              return SizedBox(
                                height: 50,
                                child: CustomButton(
                                  fillColor: AppColors.primaryColor,
                                  customBorderRadius: 20,
                                  text: signUpText,
                                  onPressed: () {
                                    if (hasData) {
                                      signUp(
                                        hasConnection: vm.isConnected,
                                      );
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
                                ),
                              );
                            },
                          ),
                        ),
                        size70VerticalSizedBox,
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
