import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nutrimate/presentation/core/theme/theme.dart';

class PlatformLoader extends StatelessWidget {
  const PlatformLoader({super.key});

  @override
  Widget build(BuildContext context) {
    final TargetPlatform platform = Theme.of(context).platform;
    return Center(
      child: platform == TargetPlatform.iOS
          ? CupertinoTheme(
              data: CupertinoTheme.of(context).copyWith(
                brightness: Brightness.light,
              ),
              child: const CupertinoActivityIndicator(
                radius: 16,
              ),
            )
          : const CircularProgressIndicator(
            strokeWidth: 2, backgroundColor: AppColors.primaryColor,
          ),
    );
  }
}
