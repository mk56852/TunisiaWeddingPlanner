import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tunisiaweddingplanner/utils/AppColors.dart';

class CategoryBar extends StatefulWidget {
  const CategoryBar({Key? key}) : super(key: key);
  @override
  State<CategoryBar> createState() => _CategoryBarState();
}

final titles = [
  "Salle de Fete",
  "Photographe",
  "Instrumentiste",
  "Serveur",
  "Robe Mariage",
  "Fleuriste"
];

class _CategoryBarState extends State<CategoryBar> {
  int currentIndex = 0;

  void onTab(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          titles.length,
          (index) => Padding(
            padding: EdgeInsets.only(right: 30.w),
            child: InkWell(
              onTap: () => {onTab(index)},
              child: Container(
                height: 30.h,
                decoration: BoxDecoration(
                    color: currentIndex == index
                        ? AppColors.color3
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: currentIndex == index
                        ? [
                            BoxShadow(
                              color: AppColors.color3, // shadow color
                              offset: Offset(
                                  0, 2), // changes the position of the shadow
                              blurRadius:
                                  6, // changes the intensity of the blur
                            ),
                          ]
                        : []),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Center(
                    child: Text(
                      titles[index],
                      style: GoogleFonts.workSans(
                        textStyle: TextStyle(
                          fontSize: 15.sp,
                          color: currentIndex == index
                              ? AppColors.color5
                              : AppColors.color1,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ).toList(),
      ),
    );
  }
}
