import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:tunisiaweddingplanner/data/data.dart';
import 'package:tunisiaweddingplanner/models/models.dart';
import 'package:tunisiaweddingplanner/screens/CategoryScreen/CategoryScreen.dart';
import 'package:tunisiaweddingplanner/screens/FavorisScreen/FavorisScreen.dart';
import 'package:tunisiaweddingplanner/screens/HomeScreen/HomeScreen.dart';
import 'package:tunisiaweddingplanner/screens/ProfilScreen/ProfilScreen.dart';
import 'package:tunisiaweddingplanner/screens/PublicationDetails/PartyRoomDetails.dart';
import 'package:tunisiaweddingplanner/screens/PublicationDetails/PublicationDetails.dart';
import 'package:tunisiaweddingplanner/screens/PublicationDetails/SimplePublicationDetails.dart';
import 'package:tunisiaweddingplanner/screens/PublicationDetails/TravelScreen.dart';
import 'package:tunisiaweddingplanner/screens/ReservationScreen/ReservationScreen.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({Key? key}) : super(key: key);
  @override
  State<AppScreen> createState() => _AppScreenState();
}

final pages = [
  // SimpleServiceDetailsScreen(),
  //ReservationScreen(),
  // TravelScreen(
  //   data: TravelAgent.fromJSON(Data.TravelAgents[0]),
  // ),
  HomePage(),
  CategoryScreen(),
  CardScreen(),
  // PartyRoomDetails(
  //   data: WeddingRoom.fromJSON(Data.weddingRoomData[0]),
  // ),
  // PublicationDetails(
  //  data: InstrumentisteData.fromJSON(Data.InstrumentistList[0]),
  //),
  ProfilScreen()
];

class _AppScreenState extends State<AppScreen> {
  int currentIndex = 0;

  void onTab(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: SizedBox(
        height: 50.h,
        child: GNav(

            // tab button hover color
            haptic: true, // haptic feedback
            tabBorderRadius: 15,
            curve: Curves.easeOutExpo,
            duration: Duration(milliseconds: 300),
            gap: 5,
            onTabChange: onTab,
            color: Colors.black,
            activeColor: Colors.black,
            iconSize: 24.w,
            tabBackgroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Accueil',
              ),
              GButton(
                icon: Icons.list,
                text: 'Categories',
              ),
              GButton(
                icon: Icons.favorite,
                text: 'Favoris',
              ),
              GButton(
                icon: Icons.person_outline,
                text: 'Profile',
              )
            ]),
      ),
    );
  }
}
