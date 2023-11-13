import 'package:flutter/material.dart';
import 'package:tunisiaweddingplanner/screens/BottomBarScreen.dart';
import 'package:tunisiaweddingplanner/screens/HomeScreen/widgets/AppTitle.dart';
import 'package:tunisiaweddingplanner/screens/LoadingScreen/LoadingScreen.dart';
import 'package:tunisiaweddingplanner/screens/LoginScreen/LoginScreen.dart';
import 'package:tunisiaweddingplanner/screens/ProductListScreen/ProductListScreen.dart';
import 'package:tunisiaweddingplanner/screens/PublicationDetails/PublicationDetails.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tunisiaweddingplanner/screens/SignUpScreen/SignUpScreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Flutter Stateful Clicker Counter';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home:
            LoginScreen(), //LoadingScreen(), //LoginScreen(), //AppScreen(), //AppScreen(),
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: Color.fromRGBO(247, 249, 255, 1),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.poppinsTextTheme(),
        ),
      ),
    );
  }
}
