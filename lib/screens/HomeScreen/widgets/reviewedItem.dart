import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tunisiaweddingplanner/models/models.dart';
import 'package:tunisiaweddingplanner/utils/AppColors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReviewedItem extends StatelessWidget {
  MustReviewedItemData data;

  ReviewedItem({required this.data});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125.h,
      // padding: EdgeInsets.only(left: 11.w),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.r),
              child: Container(
                  width: 125.h,
                  height: 125.h,
                  child: Image.asset(
                    data.mainImage,
                    fit: BoxFit.fill,
                  )),
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 15.w,
                      right: 2.w,
                      top: 10.h,
                      bottom: 10.h,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Text(
                            data.name,
                            style: GoogleFonts.workSans(
                              textStyle: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.black,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          data.category,
                          style: GoogleFonts.workSans(
                            textStyle: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.black,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.black,
                            ),
                            Text(
                              data.review,
                              style: GoogleFonts.workSans(
                                textStyle: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.black,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              width: 16.w,
                            ),
                            Flexible(
                              child: Text(
                                "(" + data.reviewedNumber + " reviews)",
                                style: GoogleFonts.workSans(
                                  textStyle: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.black,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
