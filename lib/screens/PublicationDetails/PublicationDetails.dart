import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tunisiaweddingplanner/models/models.dart';
import 'package:tunisiaweddingplanner/screens/ReservationScreen/ReservationScreen.dart';
import 'package:tunisiaweddingplanner/utils/AppColors.dart';

class PublicationDetails extends StatefulWidget {
  InstrumentisteData data;
  PublicationDetails({required this.data, Key? key}) : super(key: key);

  @override
  State<PublicationDetails> createState() => _PublicationDetailsState();
}

class _PublicationDetailsState extends State<PublicationDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: AppColors.color1,
          ),
          tooltip: 'Back',
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color.fromRGBO(247, 249, 255, 1),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 37.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 66.r,
                      height: 66.r,
                      decoration: BoxDecoration(
                        color: Color(0xffC4C4C4),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Image.asset(
                        widget.data.mainImage,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      width: 14.w,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "PRIX",
                            style: GoogleFonts.workSans(
                              textStyle: TextStyle(
                                fontSize: 12.sp,
                                height: 1.167,
                                color: AppColors.color3,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8.h,
                          ),
                          Text(
                            widget.data.price,
                            style: GoogleFonts.workSans(
                              textStyle: TextStyle(
                                height: 1.25,
                                fontSize: 16.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "PERSONNE",
                            style: GoogleFonts.workSans(
                              textStyle: TextStyle(
                                fontSize: 12.sp,
                                height: 1.167,
                                color: AppColors.color3,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8.h,
                          ),
                          Text(
                            widget.data.personPerTeam,
                            style: GoogleFonts.workSans(
                              textStyle: TextStyle(
                                fontSize: 16.sp,
                                height: 1.25,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "REVIEW",
                            style: GoogleFonts.workSans(
                              textStyle: TextStyle(
                                fontSize: 12.sp,
                                height: 1.167,
                                color: AppColors.color3,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.h,
                          ),
                          Text(
                            widget.data.review + " / 5",
                            style: GoogleFonts.workSans(
                              textStyle: TextStyle(
                                fontSize: 16.sp,
                                height: 1.25,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 42.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.data.name,
                            style: GoogleFonts.workSans(
                              textStyle: TextStyle(
                                fontSize: 24.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.h,
                          ),
                          Text(
                            "Instrumentiste",
                            style: GoogleFonts.workSans(
                              textStyle: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ReservationScreen()),
                        );
                      },
                      child: Container(
                        height: 30.h,
                        width: 89.w,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0),
                          child: Center(
                            child: Text(
                              "RESERVER",
                              style: GoogleFonts.workSans(
                                textStyle: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 45.h,
                ),
                Text(
                  "DESCRIPTION",
                  style: GoogleFonts.workSans(
                    textStyle: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.color2,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 18.h,
                ),
                Text(
                  widget.data.description,
                  style: GoogleFonts.workSans(
                    textStyle: TextStyle(
                      fontSize: 14.sp,
                      height: 1.57,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  "STORIES",
                  style: GoogleFonts.workSans(
                    textStyle: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0xffA8A8A8),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      20,
                      (index) => Container(
                        width: 55.w,
                        height: 55.w,
                        margin: EdgeInsets.only(right: 16.w),
                        decoration: BoxDecoration(
                          color: Color(0xffC4C4C4),
                          borderRadius: BorderRadius.circular(55.w),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  "PHOTOS",
                  style: GoogleFonts.workSans(
                    textStyle: TextStyle(
                      fontSize: 12.sp,
                      color: Color(0xffA8A8A8),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 6.w,
                    crossAxisSpacing: 8.h,
                  ),
                  itemCount: 30,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      color: Color(0xffC4C4C4),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
