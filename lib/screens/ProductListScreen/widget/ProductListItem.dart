import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tunisiaweddingplanner/data/data.dart';
import 'package:tunisiaweddingplanner/models/models.dart';
import 'package:tunisiaweddingplanner/screens/PublicationDetails/PartyRoomDetails.dart';
import 'package:tunisiaweddingplanner/screens/PublicationDetails/PublicationDetails.dart';

class ProductListItem extends StatefulWidget {
  ServiceGeneralData data;
  String category;
  ProductListItem({
    required this.category,
    required this.data,
    super.key,
  });

  @override
  State<ProductListItem> createState() => _ProductListItemState();
}

class _ProductListItemState extends State<ProductListItem> {
  bool isLiked = false;

  void onTab() {
    if (widget.category == "instrumentiste") {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  PublicationDetails(data: widget.data as InstrumentisteData)));
    } else if (widget.category == "salleFete") {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  PartyRoomDetails(data: widget.data as WeddingRoom)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTab(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: 170.w,
              height: 220.h,
              child: Stack(alignment: Alignment.topRight, children: [
                SizedBox(
                  width: 170.w,
                  height: 220.h,
                  child: Image.asset(
                    widget.data.mainImage,
                    fit: BoxFit.fill,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    size: 28.h,
                    isLiked ? Icons.favorite : Icons.favorite_border,
                    color: isLiked
                        ? Colors.red
                        : Colors.white, // Set the heart color
                  ),
                  onPressed: () {
                    setState(() {
                      isLiked = !isLiked; // Toggle the liked state
                    });
                  },
                ),
              ])),
          SizedBox(
            height: 12.h,
          ),
          Text(
            widget.data.name,
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
                widget.data.city,
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
