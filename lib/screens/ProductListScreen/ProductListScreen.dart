import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tunisiaweddingplanner/data/data.dart';
import 'package:tunisiaweddingplanner/models/models.dart';

import 'package:tunisiaweddingplanner/screens/ProductListScreen/widget/ProductListItem.dart';
import 'package:tunisiaweddingplanner/screens/ProductListScreen/widget/SearchAndFilter.dart';
import 'package:tunisiaweddingplanner/utils/AppColors.dart';

class ProductListScreen extends StatefulWidget {
  String title;
  String category;
  ProductListScreen({
    required this.title,
    required this.category,
    super.key,
  });

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: false,
            snap: false,
            floating: false,
            centerTitle: true,
            expandedHeight: 100.h,
            title: Text(
              widget.title,
              style: GoogleFonts.workSans(
                textStyle: TextStyle(
                  fontSize: 24.sp,
                  color: AppColors.color1,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
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
            backgroundColor: Colors.transparent,
            elevation: 8.0,
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 7.w, right: 7.w, top: 20.h),
            sliver: SliverToBoxAdapter(
              child: SearchAndFilter(), // Replace with your StatefulWidget
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(top: 20.h, left: 10.h),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisExtent: 320.h),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  if (widget.category == "instrumentiste")
                    return ProductListItem(
                      data: InstrumentisteData.fromJSON(
                          Data.InstrumentistList[index]),
                      category: widget.category,
                    );
                  else if (widget.category == "salleFete")
                    return ProductListItem(
                      data: WeddingRoom.fromJSON(Data.weddingRoomData[index]),
                      category: widget.category,
                    );
                },
                childCount: getChildCount(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  int getChildCount() {
    if (widget.category == "instrumentiste") {
      return Data.InstrumentistList.length;
    } else if (widget.category == "salleFete") {
      return Data.weddingRoomData.length;
    } else
      return 0;
  }
}
