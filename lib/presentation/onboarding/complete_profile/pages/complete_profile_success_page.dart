import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nutrimate/application/redux/actions/complete_profile_action.dart';
import 'package:nutrimate/application/redux/flags/flags.dart';
import 'package:nutrimate/application/redux/states/app_state.dart';
import 'package:nutrimate/application/redux/view_models/complete_profile_view_model.dart';
import 'package:nutrimate/domain/core/value_objects/app_strings.dart';
import 'package:nutrimate/domain/core/value_objects/asset_strings.dart';
import 'package:nutrimate/presentation/core/theme/theme.dart';
import 'package:nutrimate/presentation/core/widgets/custom_button.dart';
import 'package:nutrimate/presentation/global/spaces.dart';
import 'package:nutrimate/presentation/global/text_themes.dart';
import 'package:nutrimate/presentation/global/widgets/platform_loader.dart';

class CompleteProfileSuccessPage extends StatelessWidget {
  const CompleteProfileSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: StoreConnector<AppState, CompleteProfileViewModel>(
          converter: (Store<AppState> store) =>
              CompleteProfileViewModel.fromState(store.state),
          builder: (BuildContext context, CompleteProfileViewModel vm) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    largeVerticalSizedBox,
                    Center(
                      child: SvgPicture.asset(
                        profileCompleteSvgPath,
                        height: 300,
                        width: 300,
                      ),
                    ),
                    smallVerticalSizedBox,
                    Text(
                      allSetUpText,
                      style: boldSize24Text(
                        AppColors.blackColor,
                      ),
                    ),
                    smallVerticalSizedBox,
                    Text(
                      allSetUpDesc,
                      style: normalSize16Text(
                        AppColors.greyTextColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    size70VerticalSizedBox,
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: vm.wait!.isWaiting(submitProfileFlag)
                          ? const PlatformLoader()
                          : CustomButton(
                              onPressed: () {
                                // submit user profile via action
                                context.dispatch(CompleteProfileAction());
                              },
                              fillColor: AppColors.primaryColor,
                              customBorderRadius: 20,
                              text: doneString,
                            ),
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
