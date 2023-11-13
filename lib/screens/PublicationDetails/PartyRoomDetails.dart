import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tunisiaweddingplanner/models/models.dart';
import 'package:tunisiaweddingplanner/screens/PublicationDetails/widget/ConfirmationButton.dart';
import 'package:tunisiaweddingplanner/utils/AppColors.dart';
import 'package:tunisiaweddingplanner/widgets/AppFooter.dart';

class PartyRoomDetails extends StatefulWidget {
  WeddingRoom data;
  PartyRoomDetails({required this.data, Key? key}) : super(key: key);

  @override
  _PartyRoomDetailsState createState() => _PartyRoomDetailsState();
}

class _PartyRoomDetailsState extends State<PartyRoomDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                child: Stack(
                  children: [
                    Image.asset(
                      widget.data.mainImage,
                      width: 390.w,
                      height: 440.h,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      top: 10.0,
                      right: 10.0,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          width: 45.0,
                          height: 45.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.favorite,
                            color: Color(0xFFC4C4C4),
                          ),
                        ),
                      ),
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
                    )
                  ],
                ),
              ),
              SizedBox(height: 27.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppFooter(),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            widget.data.location,
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF262626),
                            ),
                          ),
                        ),
                        Icon(Icons.location_on, color: Color(0xFF161616)),
                      ],
                    ),
                    Divider(
                        height: 18.h,
                        color: const Color(0xFFD0D0D0),
                        thickness: 1),
                    SizedBox(height: 25.h),
                    Text(
                      'Description',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF262626),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(right: 29.w, bottom: 32.h, top: 4.h),
                      child: Text(
                        widget.data.description,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          height: 1.5,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 18.w),
                          child: Image.asset('assets/images/property-1.png',
                              width: 70.w, height: 70.h),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 18.w),
                          child: Image.asset('assets/images/property-1.png',
                              width: 70.w, height: 70.h),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 18.w),
                          child: Image.asset('assets/images/property-1.png',
                              width: 70.w, height: 70.h),
                        ),
                        const Expanded(child: SizedBox()),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 48.w,
                            height: 48.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4.r),
                              border:
                                  Border.all(color: const Color(0xFF262626)),
                            ),
                            child: Center(
                              child: Text(
                                '31',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Center(
                  child: SizedBox(
                    height: 60.h,
                    width: 300.w,
                    child: ConfirmationButton(
                      onPress: () {},
                      color: AppColors.color3,
                      text: "Reserver",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
