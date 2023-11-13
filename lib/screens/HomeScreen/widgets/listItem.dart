import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tunisiaweddingplanner/models/models.dart';
import 'package:tunisiaweddingplanner/screens/PublicationDetails/PartyRoomDetails.dart';
import 'package:tunisiaweddingplanner/screens/ReservationScreen/ReservationScreen.dart';

class HorizontalListItem extends StatelessWidget {
  WeddingRoom data;

  HorizontalListItem({required this.data, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 25.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: 159.w,
              height: 220.h,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PartyRoomDetails(data: data),
                      ));
                },
                child: Image.asset(
                  data.mainImage,
                  fit: BoxFit.fill,
                ),
              )),
          SizedBox(
            height: 12.h,
          ),
          Text(
            data.name,
            style: GoogleFonts.workSans(
              textStyle: TextStyle(
                fontSize: 16.sp,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 6.h,
          ),
          Row(
            children: [
              Icon(Icons.location_on_outlined),
              SizedBox(
                width: 2.w,
              ),
              Text(
                data.city,
                style: GoogleFonts.workSans(
                  textStyle: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
