import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tunisiaweddingplanner/utils/AppColors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConfirmationButton extends StatelessWidget {
  ConfirmationButton(
      {super.key,
      required this.color,
      this.text = "Confirmer",
      required this.onPress});

  Color color;
  String text;
  Function() onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        primary: color,
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0), // Adjust the border radius
        ),
      ),
      child: Text(text,
          style: TextStyle(
            color: AppColors.color5,
            fontSize: 21.sp,
          )),
    );
  }
}
