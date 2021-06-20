import 'package:flutter/material.dart';
import 'package:me/app/core/colors.dart';

class ActionsTerminal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: CustomizedColors.burntSienna,
          ),
        ),
        SizedBox(width: 6),
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: CustomizedColors.casablanca,
          ),
        ),
        SizedBox(width: 6),
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: CustomizedColors.mantis,
          ),
        )
      ],
    );
  }
}
