import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tunisiaweddingplanner/models/models.dart';
import 'package:tunisiaweddingplanner/screens/PublicationDetails/TravelScreen.dart';

class TravelAgentItem extends StatefulWidget {
  TravelAgent data;
  TravelAgentItem({required this.data, Key? key}) : super(key: key);

  @override
  State<TravelAgentItem> createState() => _TravelAgentItemState();
}

class _TravelAgentItemState extends State<TravelAgentItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.r),
          child: Container(
            width: 244.w,
            height: 165.h,
            child: Stack(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TravelScreen(data: widget.data),
                        ));
                  },
                  child: Image.asset(
                    widget.data.mainImage,
                    fit: BoxFit.fill,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    padding: EdgeInsets.only(left: 15.w, bottom: 20.w),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.data.name,
                          maxLines: 1,
                          style: GoogleFonts.workSans(
                            textStyle: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.black,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(Icons.edit_location),
                            SizedBox(width: 4.w),

                            /// Todo : This should be tested for overflow
                            Text(
                              widget.data.city,
                              maxLines: 1,
                              style: GoogleFonts.workSans(
                                textStyle: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.black,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
