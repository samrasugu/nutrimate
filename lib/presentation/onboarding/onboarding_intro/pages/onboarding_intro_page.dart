import 'package:flutter/material.dart';
import 'package:nutrimate/domain/core/value_objects/app_strings.dart';
import 'package:nutrimate/presentation/core/theme/theme.dart';
import 'package:nutrimate/presentation/core/widgets/custom_button.dart';
import 'package:nutrimate/presentation/global/text_themes.dart';
import 'package:nutrimate/presentation/onboarding/onboarding_intro/pages/intro_page_one.dart';
import 'package:nutrimate/presentation/onboarding/onboarding_intro/pages/intro_page_three.dart';
import 'package:nutrimate/presentation/onboarding/onboarding_intro/pages/intro_page_two.dart';
import 'package:nutrimate/presentation/router/routes.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingIntroPage extends StatefulWidget {
  const OnboardingIntroPage({super.key});

  @override
  State<OnboardingIntroPage> createState() => _OnboardingIntroPageState();
}

class _OnboardingIntroPageState extends State<OnboardingIntroPage> {
  final PageController _pageController = PageController();

  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView(
            controller: _pageController,
            onPageChanged: (int value) {
              if (value == 2) {
                setState(() {
                  onLastPage = true;
                });
              } else {
                setState(() {
                  onLastPage = false;
                });
              }
            },
            children: const <Widget>[
              IntroPageOne(),
              IntroPageTwo(),
              IntroPageThree(),
            ],
          ),
          Positioned(
            bottom: 50,
            left: 30,
            right: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SmoothPageIndicator(
                  controller: _pageController,
                  count: 3,
                  effect: const WormEffect(
                    dotColor: AppColors.whiteColor,
                    activeDotColor: AppColors.primaryColor,
                    dotHeight: 13,
                    dotWidth: 13,
                  ),
                ),
                // navigation buttons
                // next or done
                onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.popAndPushNamed(
                            context,
                            Routes.selectOnboarding,
                          );
                        },
                        child: CustomButton(
                          fillColor: AppColors.primaryColor,
                          customBorderRadius: 25,
                          customChild: Row(
                            children: <Widget>[
                              Text(
                                doneString,
                                style: normalSize16Text(AppColors.whiteColor),
                              ),
                              const Icon(
                                Icons.chevron_right_sharp,
                                color: AppColors.whiteColor,
                              ),
                            ],
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          _pageController.nextPage(
                            duration: const Duration(microseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                        child: CustomButton(
                          fillColor: AppColors.primaryColor,
                          customBorderRadius: 25,
                          customChild: Row(
                            children: <Widget>[
                              Text(
                                nextString,
                                style: normalSize16Text(AppColors.whiteColor),
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
        ],
      ),
    );
  }
}
