
import 'package:flutter/material.dart';

import '../divider_vertical/divider_vertical_widget.dart';
import '../label_button/label_button.dart';

class SetLabelButtons extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnPressed;
  final String secondaryLabel;
  final VoidCallback secondaryOnPressed;
  const SetLabelButtons({
    super.key, 
    required this.primaryLabel, 
    required this.primaryOnPressed, 
    required this.secondaryLabel, 
    required this.secondaryOnPressed
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      child: Row(
        children: [
          Expanded(
            child: LabelButton(
              label: primaryLabel,
              onPressed: primaryOnPressed
            )
          ),
          const DividerVerticalWidget(),
          Expanded(
            child: LabelButton(
              label: secondaryLabel, 
              onPressed: secondaryOnPressed
            )
          ),
        ],
      ),
    );
  }
}