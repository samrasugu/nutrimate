import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nutrimate/application/redux/actions/auth/logout_action.dart';
import 'package:nutrimate/domain/core/value_objects/app_strings.dart';
import 'package:nutrimate/domain/core/value_objects/asset_strings.dart';
import 'package:nutrimate/presentation/core/theme/theme.dart';
import 'package:nutrimate/presentation/core/widgets/custom_app_bar.dart';
import 'package:nutrimate/presentation/global/spaces.dart';
import 'package:nutrimate/presentation/global/text_themes.dart';
import 'package:nutrimate/presentation/profile/widgets/settings_list_item.dart';
import 'package:nutrimate/presentation/router/routes.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: CustomAppBar(
          leadingWidget: SvgPicture.asset(
            backButtonSvgPath,
            height: 25,
            width: 25,
          ),
          title: settingsText,
          titleTextStyle: normalSize18Text(
            AppColors.blackColor,
          ),
          onBackButtonPressed: () {
            Navigator.pop(context);
          },
          trailingWidget: const SizedBox(
            width: 40,
          ),
        ),
      ),
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                largeVerticalSizedBox,
                SettingsListItem(
                  onTap: () {
                    // navigate user to profile details page
                  },
                  prefixIcon: Icons.person_2_rounded,
                  text: profileText,
                ),
                mediumVerticalSizedBox,
                SettingsListItem(
                  onTap: () {
                    // navigate user to profile details page
                  },
                  prefixIcon: Icons.person_2_rounded,
                  text: settingsText,
                ),
                mediumVerticalSizedBox,
                SettingsListItem(
                  onTap: () {
                    context.dispatch(
                      LogoutAction(),
                    );

                    Navigator.of(context).pushNamedAndRemoveUntil(
                      Routes.login,
                      (Route<dynamic> route) => false,
                    );
                  },
                  prefixIcon: Icons.logout_rounded,
                  text: logOutText,
                ),
                largeVerticalSizedBox,
                Text(
                  '$version $appVersion',
                  style: boldSize16Text(AppColors.blackColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
