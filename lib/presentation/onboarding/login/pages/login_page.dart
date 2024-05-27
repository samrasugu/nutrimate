import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nutrimate/application/redux/actions/login/login_action.dart';
import 'package:nutrimate/application/redux/flags/flags.dart';
import 'package:nutrimate/application/redux/states/app_state.dart';
import 'package:nutrimate/application/redux/view_models/login_view_model.dart';
import 'package:nutrimate/domain/core/value_objects/app_strings.dart';
import 'package:nutrimate/domain/core/value_objects/asset_strings.dart';
import 'package:nutrimate/presentation/core/theme/theme.dart';
import 'package:nutrimate/presentation/core/widgets/custom_button.dart';
import 'package:nutrimate/presentation/core/widgets/custom_text_field.dart';
import 'package:nutrimate/presentation/global/spaces.dart';
import 'package:nutrimate/presentation/global/text_themes.dart';
import 'package:nutrimate/presentation/global/widgets/platform_loader.dart';
import 'package:nutrimate/presentation/onboarding/login/login_form_manager.dart';
import 'package:nutrimate/presentation/router/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LoginFormManager _loginFormManager = LoginFormManager();

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  bool _passwordVisible = false;

  void logIn({required bool hasConnection}) {
    if (!hasConnection) {
      StoreProvider.dispatch<AppState>(
        context,
        LoginAction(
          loginPayload: _loginFormManager.submit(),
        ),
      );
    } else {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          const SnackBar(
            content: Text(
              connectionLostText,
            ),
          ),
        );
    }
  }

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: StoreConnector<AppState, LoginViewModel>(
          converter: (Store<AppState> store) =>
              LoginViewModel.fromState(store.state),
          onInit: (Store<AppState> store) {
            store.dispatch(WaitAction<AppState>.clear());
          },
          onDispose: (Store<AppState> store) {
            emailController.dispose();
            passwordController.dispose();
          },
          builder: (BuildContext context, LoginViewModel vm) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        largeVerticalSizedBox,
                        Center(
                          child: SvgPicture.asset(
                            loginEmailSvgPath,
                            height: 300,
                            width: 300,
                          ),
                        ),
                        smallVerticalSizedBox,
                        Text(
                          signInText,
                          style: boldSize24Text(
                            AppColors.blackColor,
                          ),
                        ),
                        largeVerticalSizedBox,
                        StreamBuilder<String>(
                          stream: _loginFormManager.email,
                          builder: (
                            BuildContext context,
                            AsyncSnapshot<String> snapshot,
                          ) {
                            return CustomTextField(
                              controller: emailController,
                              hintText: emailString,
                              borderColor: AppColors.primaryColor,
                              focusedBorderColor: AppColors.primaryColor,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.deny(
                                  RegExp(r'\s'),
                                ),
                              ],
                              onChanged: (String value) {
                                _loginFormManager.inEmail.add(value);
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
                          stream: _loginFormManager.password,
                          builder: (
                            BuildContext context,
                            AsyncSnapshot<String> snapshot,
                          ) {
                            return CustomTextField(
                              controller: passwordController,
                              hintText: passwordString,
                              obscureText: !_passwordVisible,
                              borderColor: AppColors.primaryColor,
                              focusedBorderColor: AppColors.primaryColor,
                              suffixIcon: const Icon(
                                Icons.visibility,
                                color: AppColors.greyTextColor,
                              ),
                              onSuffixIconPressed: () {
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.deny(
                                  RegExp(r'\s'),
                                ),
                              ],
                              onChanged: (String value) {
                                _loginFormManager.inPassword.add(value);
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
                            stream: _loginFormManager.isFormValid,
                            builder: (
                              BuildContext context,
                              AsyncSnapshot<bool> snapshot,
                            ) {
                              final bool hasData =
                                  snapshot.hasData && snapshot.data != null;

                              if (vm.wait!.isWaiting(loginFlag)) {
                                return const PlatformLoader();
                              }
                              return SizedBox(
                                height: 50,
                                child: CustomButton(
                                  fillColor: AppColors.primaryColor,
                                  customBorderRadius: 20,
                                  text: signInText,
                                  onPressed: () {
                                    if (hasData && snapshot.data!) {
                                      logIn(
                                        hasConnection:
                                            StoreProvider.state<AppState>(
                                                  context,
                                                )
                                                    .connectivityState
                                                    ?.isConnected ??
                                                false,
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
