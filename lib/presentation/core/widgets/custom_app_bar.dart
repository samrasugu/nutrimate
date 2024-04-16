import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nutrimate/presentation/core/theme/theme.dart';
import 'package:nutrimate/presentation/core/widgets/custom_back_button.dart';
import 'package:nutrimate/presentation/global/text_themes.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    this.showBackButton = false,
    this.leadingWidget,
    this.title,
    this.trailingWidget,
    this.onBackButtonPressed,
    this.showUnderline,
    this.titleTextStyle,
  });

  final bool showBackButton;
  final Widget? leadingWidget;
  final String? title;
  final Widget? trailingWidget;
  final void Function()? onBackButtonPressed;
  final bool? showUnderline;
  final TextStyle? titleTextStyle;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: AppColors.greyTextColor.withOpacity(.5),
              width: (showUnderline ?? false) ? 1 : 0,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            if (showBackButton)
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
                child: CustomBackButton(
                  onBackButtonPressed: onBackButtonPressed ?? () {},
                ),
              )
            else
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
                child: GestureDetector(
                  onTap: onBackButtonPressed ?? () {},
                  child: leadingWidget ?? Container(),
                ),
              ),
            Flexible(
              child: Text(
                title ?? '',
                style: titleTextStyle ??
                    boldSize22Text(
                      AppColors.primaryColor,
                    ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25.0),
              child: trailingWidget ?? Container(),
            ),
          ],
        ),
      ),
    );
  }
}
