import 'package:flutter/material.dart';
import 'package:nutrimate/application/core/services/utils.dart';
import 'package:nutrimate/presentation/core/widgets/custom_select_pill.dart';

class SelectMealTimesWidget extends StatefulWidget {
  const SelectMealTimesWidget({super.key});

  @override
  State<SelectMealTimesWidget> createState() => _SelectMealTimesWidgetState();
}

class _SelectMealTimesWidgetState extends State<SelectMealTimesWidget> {
  String? selectedMealTime;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: mealTimes.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        final String mealTime = mealTimes[index];
        final bool isSelected = mealTime == selectedMealTime;
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedMealTime = isSelected ? null : mealTime;
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: CustomSelectPill(
              text: mealTime,
              isSelected: isSelected,
            ),
          ),
        );
      },
    );
  }
}
