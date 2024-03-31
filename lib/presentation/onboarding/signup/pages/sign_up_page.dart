import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nutrimate/domain/core/value_objects/app_strings.dart';
import 'package:nutrimate/domain/core/value_objects/asset_strings.dart';
import 'package:nutrimate/presentation/core/theme/theme.dart';
import 'package:nutrimate/presentation/core/widgets/custom_button.dart';
import 'package:nutrimate/presentation/core/widgets/custom_text_field.dart';
import 'package:nutrimate/presentation/global/spaces.dart';
import 'package:nutrimate/presentation/global/text_themes.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                Form(
                  key: _formKey,
                  child: Column(
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
                      CustomTextField(
                        controller: firstNameController,
                        hintText: firstNameString,
                        borderColor: AppColors.primaryColor,
                        focusedBorderColor: Colors.transparent,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.deny(
                            RegExp(r'\s'),
                          ),
                        ],
                      ),
                      largeVerticalSizedBox,
                      CustomTextField(
                        controller: lastNameController,
                        hintText: lastNameString,
                        borderColor: AppColors.primaryColor,
                        focusedBorderColor: Colors.transparent,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.deny(
                            RegExp(r'\s'),
                          ),
                        ],
                      ),
                      largeVerticalSizedBox,
                      CustomTextField(
                        controller: emailController,
                        hintText: emailString,
                        borderColor: AppColors.primaryColor,
                        focusedBorderColor: Colors.transparent,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.deny(
                            RegExp(r'\s'),
                          ),
                        ],
                      ),
                      largeVerticalSizedBox,
                      CustomTextField(
                        controller: passwordController,
                        hintText: passwordString,
                        obscureText: true,
                        borderColor: AppColors.primaryColor,
                        focusedBorderColor: Colors.transparent,
                        suffixIcon: const Icon(
                          Icons.visibility,
                          color: AppColors.greyTextColor,
                        ),
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.deny(
                            RegExp(r'\s'),
                          ),
                        ],
                      ),
                      size70VerticalSizedBox,
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: CustomButton(
                          fillColor: AppColors.primaryColor,
                          customBorderRadius: 20,
                          text: signInText,
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {}
                          },
                        ),
                      ),
                      size70VerticalSizedBox,
                    ],
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
