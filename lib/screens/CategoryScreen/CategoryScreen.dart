import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tunisiaweddingplanner/screens/ProductListScreen/ProductListScreen.dart';
import 'package:tunisiaweddingplanner/screens/PublicationDetails/PublicationDetails.dart';
import 'package:tunisiaweddingplanner/utils/AppColors.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late List<Animation<double>> _animations;
  late List data;

  @override
  void initState() {
    data = [
      [
        'assets/images/instrumentist.jpg',
        'Instrumentiste',
        ProductListScreen(
          category: "instrumentiste",
          title: 'Instrumentiste',
        )
      ],
      [
        'assets/images/dress.jpg',
        'Robe de mariée',
        ProductListScreen(
          category: "dress",
          title: 'Robe de mariée',
        )
      ],
      [
        'assets/images/photograph.jpg',
        'Photographe',
        ProductListScreen(
          category: "photograph",
          title: 'Photographe',
        )
      ],
      [
        'assets/images/fleur.jpg',
        'Fleuriste',
        ProductListScreen(
          category: "fleur",
          title: 'Fleuriste',
        )
      ],
      [
        'assets/images/salleFete.jpg',
        'Salle de fete',
        ProductListScreen(
          category: "salleFete",
          title: 'Salle de fete',
        )
      ],
    ];
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    // Create animations for each CategoryItem
    _animations = List.generate(data.length, (index) {
      final start = (index + 1) * 0.1;
      final end = (index + 2) * 0.1;
      return Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
          parent: _controller,
          curve: Interval(start, end, curve: Curves.easeOut),
        ),
      );
    });

    // Start the animations
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: 6.h),
            for (var i = 0; i < _animations.length; i++)
              ScaleTransition(
                scale: _animations[i],
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => data[i][2]),
                    );
                  },
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                    child: CategoryCard(
                      image: data[i][0],
                      category: data[i][1],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String category;
  final String image;

  const CategoryCard({
    super.key,
    required this.category,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: double.infinity,
      // margin: EdgeInsets.symmetric(horizontal: 24.w),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(16.r),
      ),
      clipBehavior: Clip.antiAlias,
      child: ColoredBox(
        color: AppColors.color1.withOpacity(0.5),
        child: Center(
          child: Text(
            category,
            style: TextStyle(
                fontFamily: GoogleFonts.workSans().fontFamily,
                fontWeight: FontWeight.bold,
                fontSize: 25.sp,
                height: 1.10.h,
                color: AppColors.color5),
          ),
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String name;
  final String image;

  const ProductCard({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220.w,
      height: 356.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 300.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(24.r),
            ),
          ),
          SizedBox(
            height: 14.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontFamily: GoogleFonts.workSans().fontFamily,
                        fontWeight: FontWeight.w600,
                        height: 0.94,
                        fontSize: 20.sp,
                      ),
                    ),
                    Text(
                      "875 - 4788/751",
                      style: TextStyle(
                        fontFamily: GoogleFonts.workSans().fontFamily,
                        height: 1.10.h,
                        fontSize: 14.sp,
                      ),
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "\$599.99",
                    style: TextStyle(
                      fontFamily: GoogleFonts.openSansCondensed().fontFamily,
                      height: 0.85.h,
                      fontSize: 26.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
