import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tunisiaweddingplanner/models/models.dart';
import 'package:tunisiaweddingplanner/screens/HomeScreen/widgets/AppTitle.dart';
import 'package:tunisiaweddingplanner/screens/HomeScreen/widgets/CategoryBar.dart';
import 'package:tunisiaweddingplanner/data/data.dart';
import 'package:tunisiaweddingplanner/screens/HomeScreen/widgets/TravelAgent.dart';
import 'package:tunisiaweddingplanner/screens/HomeScreen/widgets/reviewedItem.dart';
import 'package:tunisiaweddingplanner/utils/AppColors.dart';
import 'package:tunisiaweddingplanner/widgets/AdImages.dart';
import 'package:tunisiaweddingplanner/widgets/AppFooter.dart';
import 'package:tunisiaweddingplanner/widgets/BlocTitle.dart';

import 'widgets/listItem.dart';
import 'widgets/searchBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            AppTitle(),
            Padding(
              padding: EdgeInsets.only(
                left: 20.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 33.h,
                  ),

                  Padding(
                      padding: EdgeInsets.only(
                        right: 22.w,
                      ),
                      child: AppSearchBar()),
                  SizedBox(
                    height: 23.h,
                  ),
                  BlocTitle(text: "Stories du semaine"),
                  SizedBox(
                    height: 23.h,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        5,
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
                    height: 20.h,
                  ),

                  BlocTitle(text: "Explore"),
                  SizedBox(
                    height: 13.h,
                  ),
                  CategoryBar(),
                  SizedBox(
                    height: 20.h,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        Data.weddingRoomData.length,
                        (index) => HorizontalListItem(
                          data:
                              WeddingRoom.fromJSON(Data.weddingRoomData[index]),
                        ),
                      ).toList(),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  BlocTitle(
                    text: "Agence de Voyage",
                    secondText: "Voir tout",
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    height: 165.h,
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics()),
                      scrollDirection: Axis.horizontal,
                      itemCount: Data.TravelAgents.length,
                      itemBuilder: (c, i) {
                        return TravelAgentItem(
                            data: TravelAgent.fromJSON(Data.TravelAgents[i]));
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: 30.w,
                        );
                      },
                    ),
                  ),

                  SizedBox(
                    height: 20.h,
                  ),
                  BlocTitle(
                    text: "Les plus votés",
                    secondText: "Voir tout",
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  ListView.separated(
                    shrinkWrap: true,
                    itemCount: Data.MustReviewedItems.length,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (c, i) {
                      return ReviewedItem(
                          data: MustReviewedItemData.fromJSON(
                              Data.MustReviewedItems[i]));
                    },
                    separatorBuilder: (c, i) {
                      return SizedBox(height: 24.h);
                    },
                  ),
                  //     AppFooter(),
                  //      SizedBox(
                  //      height: 20.h,
                  //    ),
                  //    Padding(
                  //     padding: EdgeInsets.only(right: 20.w),
                  //     child:
                  //         AdWidget(duration: Duration(seconds: 4), height: 120.h),
                  //   ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
