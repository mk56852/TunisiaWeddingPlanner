import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tunisiaweddingplanner/utils/AppColors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTitle extends StatelessWidget {
  AppTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.h,
      child: Card(
        color: AppColors.color3,
        elevation: 8, // Adjust the elevation as needed
        shadowColor: AppColors.color1, // Set the shadow color
        shape: RoundedRectangleBorder(
          borderRadius:
              // Adjust the border radius as needed
              BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.menu,
                        color: AppColors.color5,
                        size: 35,
                      )),
                  GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.person_outline,
                        color: AppColors.color5,
                        size: 35,
                      )),
                ],
              ),

              SizedBox(
                height: 30.h,
              ),
              // Adjust the spacing between icons and text
              Column(
                children: [
                  Text(
                    "Tunisian Wedding Planner",
                    style: GoogleFonts.workSans(
                      textStyle: TextStyle(
                        fontSize: 24.sp,
                        color: AppColors.color5,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Center(
                child: Text(
                  "Rendez votre mariage inoubliable !",
                  style: GoogleFonts.workSans(
                    textStyle: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.color4,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
