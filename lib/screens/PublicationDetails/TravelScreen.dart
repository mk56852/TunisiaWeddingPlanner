import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:tunisiaweddingplanner/models/models.dart';
import 'package:tunisiaweddingplanner/widgets/AdImages.dart';
import 'package:tunisiaweddingplanner/widgets/AppFooter.dart';

class TravelScreen extends StatefulWidget {
  TravelAgent data;
  TravelScreen({required this.data, Key? key}) : super(key: key);

  @override
  State<TravelScreen> createState() => _TravelScreenState();
}

class _TravelScreenState extends State<TravelScreen> {
  bool showContact = false;

  void showCont() {
    setState(() {
      showContact = !showContact;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 249.h,
              child: Stack(
                children: [
                  Container(
                    height: 186.h,
                    width: 360.w,
                    child:
                        Image.asset(widget.data.coverImage, fit: BoxFit.cover),
                  ),
                  Positioned(
                    top: 10.0,
                    left: 10.0,
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 45.0,
                        height: 45.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Icon(
                          Icons.arrow_back,
                          color: Color(0xFFC4C4C4),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      right: 101.w,
                      bottom: 0,
                      child: ClipOval(
                        child: Container(
                          width: 150.w,
                          height: 150.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(75
                                .w), // Half of the width/height for a perfect circle
                            image: DecorationImage(
                              image: AssetImage(widget.data.mainImage),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              widget.data.name,
              style: GoogleFonts.workSans(
                textStyle: TextStyle(
                  fontSize: 24.sp,
                  color: Colors.black,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on_outlined,
                  size: 30.w,
                ),
                Text(
                  widget.data.city,
                  style: GoogleFonts.workSans(
                    textStyle: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.black,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 90.w,
                    height: 30.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.h),
                      border: Border.all(color: Colors.black, width: 1.w),
                    ),
                    child: Center(
                      child: Text(
                        "REVIEW",
                        style: GoogleFonts.workSans(
                          textStyle: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.black,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8.w),
                GestureDetector(
                  onTap: () {
                    showCont();
                  },
                  child: Container(
                    width: 90.w,
                    height: 30.h,
                    decoration: BoxDecoration(
                      color: Color(0xff262626),
                      borderRadius: BorderRadius.circular(30.h),
                    ),
                    child: Center(
                      child: Text(
                        "CONTACTER",
                        style: GoogleFonts.workSans(
                          textStyle: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.white,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            showContact ? AppFooter() : SizedBox(height: 20.h),
            SizedBox(height: 30.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "DESCRIPTION",
                    style: GoogleFonts.workSans(
                      textStyle: TextStyle(
                        fontSize: 14.sp,
                        color: Color(0xffA8A8A8),
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  Text(
                    widget.data.description,
                    style: GoogleFonts.workSans(
                      textStyle: TextStyle(
                        fontSize: 12.sp,
                        color: Color(0xffA8A8A8),
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 50.h),
            AdWidget(
              duration: Duration(seconds: 4),
              height: 100.h,
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "PHOTOS",
                  style: GoogleFonts.workSans(
                    textStyle: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0xffA8A8A8),
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              itemCount: 30,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 8.h,
                crossAxisSpacing: 6.w,
              ),
              itemBuilder: (c, i) {
                return Container(
                  height: 110.h,
                  color: Color(0xffC4C4C4),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
