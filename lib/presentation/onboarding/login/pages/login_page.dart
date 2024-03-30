import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nutrimate/domain/core/value_objects/app_strings.dart';
import 'package:nutrimate/domain/core/value_objects/asset_strings.dart';
import 'package:nutrimate/presentation/global/spaces.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Form(
              child: Column(
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
                  const Text(signInText),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
