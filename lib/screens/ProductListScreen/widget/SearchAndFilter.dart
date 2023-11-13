import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tunisiaweddingplanner/utils/AppColors.dart';

class SearchAndFilter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50.0.h,
          width: 290.0.w,
          decoration: BoxDecoration(
            color: AppColors.color5,
            border: Border.all(
              color: Colors.grey.withOpacity(0.2),
            ),
            borderRadius: BorderRadius.circular(25.0.w),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 10.0.w),
              Center(
                child: Icon(Icons.search),
              ),
              SizedBox(width: 10.0.w),
              Flexible(
                child: Center(
                  child: TextFormField(
                    decoration: InputDecoration.collapsed(
                      hintText: 'Search...',
                      hintStyle: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          height: 50.0.h,
          width: 50.0.w,
          decoration: BoxDecoration(
            color: AppColors.color5,
            border: Border.all(
              color: Colors.grey.withOpacity(0.5),
            ),
            borderRadius: BorderRadius.circular(15.0.w),
          ),
          child: Center(
            child: Icon(Icons.filter_list),
          ),
        ),
      ],
    );
  }
}
