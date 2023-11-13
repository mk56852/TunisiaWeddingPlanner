import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class BlocTitle extends StatelessWidget {
  String text;
  String secondText;
  Color color;
  BlocTitle(
      {super.key,
      required this.text,
      this.secondText = '',
      this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    if (secondText == '') {
      return Text(
        text,
        style: GoogleFonts.workSans(
          textStyle: TextStyle(
            fontSize: 24.sp,
            color: color,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
    } else {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: GoogleFonts.workSans(
              textStyle: TextStyle(
                fontSize: 24.sp,
                color: color,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Text(
            secondText,
            style: GoogleFonts.workSans(
              textStyle: TextStyle(
                fontSize: 15.sp,
                color: color,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      );
    }
  }
}
