import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  _CardScreenState createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  List<String> cards = [
    'assets/images/pattern.png',
    'assets/images/pattern.png'
  ];
  List<CardScreenModel> models = [
    CardScreenModel("30.12", "Confirm"),
    CardScreenModel("70.00", "Confirm"),
    CardScreenModel("170.00", "Confirm")
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 5.h,
            color: const Color(0xffD0D0D0),
          ),
          Expanded(
            child: Stack(
              fit: StackFit.expand,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 24.w, top: 18.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Cards",
                        style: GoogleFonts.workSans(
                          textStyle: TextStyle(
                            fontSize: 20.sp,
                            color: Colors.black,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(height: 15.h),
                      SizedBox(
                        height: 222.h,
                        child: ListView.separated(
                          padding: EdgeInsets.zero,
                          physics: const BouncingScrollPhysics(
                              parent: AlwaysScrollableScrollPhysics()),
                          scrollDirection: Axis.horizontal,
                          itemCount: cards.length + 1,
                          itemBuilder: (c, i) {
                            if (i == 0) {
                              return Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RotatedBox(
                                    quarterTurns: 3,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xffF4F4F4),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(48.r),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.25),
                                            spreadRadius: 0,
                                            blurRadius: 8,
                                            offset: const Offset(0,
                                                4), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      margin: EdgeInsets.only(top: 16.w),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 16.w, vertical: 8.h),
                                      child: const Text("Ajouter card"),
                                    ),
                                  )
                                ],
                              );
                            }

                            ///Todo: This area needs to be improved
                            return Center(
                              child: Container(
                                padding: EdgeInsets.zero,
                                width: 159.w,
                                // height: 222.h,

                                child: Container(
                                  // width: 159.w,
                                  // height: 222.h,
                                  decoration: BoxDecoration(
                                    // color: Colors.black,
                                    image: DecorationImage(
                                        image: AssetImage(cards[i - 1]),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            if (index == 0) {
                              return SizedBox(
                                width: 31.w,
                              );
                            }
                            return SizedBox(
                              width: 20.w,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                DraggableScrollableSheet(
                    // initialChildSize: 0.4,
                    minChildSize: 0.4,
                    maxChildSize: 0.8,
                    builder: (c, scrollController) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24.r),
                            topRight: Radius.circular(24.r),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0xffC4C4C4).withOpacity(0.25),
                              spreadRadius: 0,
                              blurRadius: 8,
                              offset: const Offset(
                                  0, -4), // changes position of shadow
                            ),
                          ],
                        ),
                        child: SingleChildScrollView(
                          controller: scrollController,
                          physics: const BouncingScrollPhysics(
                              parent: AlwaysScrollableScrollPhysics()),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 50.w,
                                    height: 4.h,
                                    decoration: BoxDecoration(
                                        color: const Color(0xff262626),
                                        borderRadius:
                                            BorderRadius.circular(50.r)),
                                    margin: EdgeInsets.only(top: 21.h),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 24.w,
                                        right: 24.w,
                                        bottom: 25.h,
                                        top: 25.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "List des Favoris",
                                          style: GoogleFonts.workSans(
                                            textStyle: TextStyle(
                                              fontSize: 20.sp,
                                              color: Colors.black,
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              ListView.separated(
                                shrinkWrap: true,
                                controller: scrollController,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (c, i) {
                                  return Padding(
                                    padding: EdgeInsets.only(
                                      left: 24.w,
                                      right: 23.w,
                                    ),
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.r),
                                            child: Container(
                                              width: 64.r,
                                              height: 64.r,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          SizedBox(width: 30.w),
                                          Expanded(
                                            flex: 3,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("Transaction #${i + 1}"),
                                                Text(
                                                  "\$ ${models[i].price}",
                                                  style: GoogleFonts.workSans(
                                                    textStyle: TextStyle(
                                                      fontSize: 28.sp,
                                                      color: Colors.black,
                                                      fontStyle:
                                                          FontStyle.normal,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                              flex: 2,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xff262626),
                                                      borderRadius:
                                                          BorderRadius.all(
                                                        Radius.circular(48.r),
                                                      ),
                                                    ),
                                                    margin: EdgeInsets.only(
                                                        top: 16.w),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 16.w,
                                                            vertical: 8.h),
                                                    child: Text(
                                                      models[i].buttonText,
                                                      style:
                                                          GoogleFonts.workSans(
                                                        textStyle: TextStyle(
                                                          fontSize: 10.sp,
                                                          color: Colors.white,
                                                          fontStyle:
                                                              FontStyle.normal,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                                separatorBuilder: (c, i) {
                                  return SizedBox(
                                    height: 18.h,
                                  );
                                },
                                itemCount: models.length,
                              )
                            ],
                          ),
                        ),
                      );
                    })
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CardScreenModel {
  final String price;
  final String buttonText;

  CardScreenModel(this.price, this.buttonText);
}
