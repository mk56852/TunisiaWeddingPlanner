import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:tunisiaweddingplanner/screens/PublicationDetails/widget/ConfirmationButton.dart';
import 'package:tunisiaweddingplanner/utils/AppColors.dart';

class ReservationScreen extends StatefulWidget {
  const ReservationScreen({Key? key}) : super(key: key);

  @override
  _ReservationScreenState createState() => _ReservationScreenState();
}

class _ReservationScreenState extends State<ReservationScreen> {
  // DateTime? _focusedDay;
  DateTime? _selectedDay;
  String? _timeUnit;
  int selectedButton = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(247, 249, 255, 1),
      appBar: AppBar(
        elevation: 0,
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
        backgroundColor: Color.fromRGBO(247, 249, 255, 1),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(23.w, 20.h, 23.w, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    getTitle("Selectionnez une data", false),
                    SizedBox(
                      height: 10.h,
                    ),
                    _calendarWidget(),
                    getTitle("Selectionnez l'heure", false),
                    SizedBox(
                      height: 10.h,
                    ),
                    getButtons(),
                    SizedBox(
                      height: 30.h,
                    ),
                    getTitle("Nom et localisation du salle de fete", false),
                    SizedBox(
                      height: 10.h,
                    ),
                    getWeddingSpaceLocation(),
                    SizedBox(
                      height: 50.h,
                    ),
                    Center(
                      child: SizedBox(
                        height: 60.h,
                        width: 300.w,
                        child: ConfirmationButton(
                            color: AppColors.color3, onPress: () => {}),
                      ),
                    ),
                    SizedBox(
                      height: 70.h,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _calendarWidget() => Container(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 17.h),
        margin: EdgeInsets.only(bottom: 36.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13.r),
          boxShadow: [
            BoxShadow(
              blurRadius: 60,
              offset: const Offset(0, 10),
              color: Colors.black.withOpacity(.1),
            ),
          ],
        ),
        child: Column(
          children: [
            TableCalendar(
              focusedDay: DateTime.now(),
              firstDay: DateTime(2020),
              lastDay: DateTime(2040),
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  // _focusedDay = focusedDay; // update `_focusedDay` here as well
                });
              },
              onPageChanged: (focusedDay) {
                // _focusedDay = focusedDay;
              },
              currentDay: DateTime.now().add(const Duration(days: 2)),
              availableCalendarFormats: const {CalendarFormat.month: 'Month'},
              daysOfWeekStyle: DaysOfWeekStyle(
                weekdayStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13.sp,
                  color: const Color(0xFF3C3C43).withOpacity(.3),
                ),
                weekendStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13.sp,
                  color: const Color(0xFF3C3C43).withOpacity(.3),
                ),
              ),
              headerStyle: HeaderStyle(
                titleTextStyle: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF262626),
                ),
              ),
              calendarStyle: CalendarStyle(
                selectedTextStyle: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                defaultTextStyle: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF262626),
                ),
                weekendTextStyle: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF262626),
                ),
                selectedDecoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.color3,
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 4),
                      color: Colors.black.withOpacity(.25),
                      blurRadius: 16,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );

  Widget getTitle(String title, bool withPadding) {
    if (withPadding)
      return Padding(
        padding: EdgeInsets.fromLTRB(23.w, 36.h, 23.w, 17.h),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 17.sp,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF262626),
          ),
        ),
      );
    else
      return Text(title,
          style: TextStyle(
            fontSize: 17.sp,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF262626),
          ));
  }

  Widget getButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Adjust as needed
      children: <Widget>[
        Expanded(
          child: SizedBox(
            height: 50.h,
            child: ElevatedButton(
              onPressed: () => selectButton(1),
              style: ElevatedButton.styleFrom(
                primary: selectedButton == 1 ? AppColors.color3 : Colors.white,
                elevation: 4.0,
                side: BorderSide(color: Colors.black, width: 0.7),
              ),
              child: Text(
                '9 PM',
                style: TextStyle(
                    color: selectedButton == 1
                        ? AppColors.color5
                        : AppColors.color1),
              ),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 50.h,
            child: ElevatedButton(
              onPressed: () => selectButton(2),
              style: ElevatedButton.styleFrom(
                primary: selectedButton == 2 ? AppColors.color3 : Colors.white,
                elevation: 4.0,
                side: BorderSide(color: Colors.black, width: 0.7),
              ),
              child: Text(
                '6 PM',
                style: TextStyle(
                    color: selectedButton == 2
                        ? AppColors.color5
                        : AppColors.color1),
              ),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 50.h,
            child: ElevatedButton(
              onPressed: () => selectButton(3),
              style: ElevatedButton.styleFrom(
                primary: selectedButton == 3 ? AppColors.color3 : Colors.white,
                elevation: 4.0,
                side: BorderSide(color: Colors.black, width: 0.7),
              ),
              child: Text(
                '3 PM',
                style: TextStyle(
                    color: selectedButton == 3
                        ? AppColors.color5
                        : AppColors.color1),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void selectButton(int buttonIndex) {
    setState(() {
      selectedButton = buttonIndex;
    });
  }

  Widget getWeddingSpaceLocation() {
    return Container(
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(2.0), // Adjust the border radius as needed
        boxShadow: [
          BoxShadow(
            color: Colors.white, // Shadow color
            spreadRadius: 3, // Spread radius
            blurRadius: 5, // Blur radius
            offset: Offset(0, 3), // Offset in the y-axis for the shadow
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(12.0), // Adjust padding as needed
          // Remove the default border
          hintText: 'nom et localisation', // Placeholder text
        ),
      ),
    );
  }
}
