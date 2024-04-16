import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nutrimate/domain/core/value_objects/app_strings.dart';
import 'package:nutrimate/domain/core/value_objects/asset_strings.dart';
import 'package:nutrimate/presentation/core/theme/theme.dart';
import 'package:nutrimate/presentation/core/widgets/custom_button.dart';
import 'package:nutrimate/presentation/global/spaces.dart';
import 'package:nutrimate/presentation/global/text_themes.dart';
import 'package:nutrimate/presentation/router/routes.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Flexible(
                child: Text(
                  chatCTAText,
                  style: boldSize20Text(
                    AppColors.whiteColor,
                  ),
                ),
              ),
              SvgPicture.asset(
                chatIconSvgPath,
                height: 80,
                width: 80,
              ),
            ],
          ),
          smallVerticalSizedBox,
          CustomButton(
            text: askNowText,
            fillColor: AppColors.whiteColor,
            textColor: AppColors.blackColor,
            customBorderRadius: 25,
            onPressed: () {
              Navigator.pushNamed(context, Routes.chat);
            },
          ),
        ],
      ),
    );
  }
}
