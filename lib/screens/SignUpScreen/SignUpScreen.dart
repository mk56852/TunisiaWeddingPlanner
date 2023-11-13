import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tunisiaweddingplanner/screens/PublicationDetails/widget/ConfirmationButton.dart';
import 'package:tunisiaweddingplanner/utils/AppColors.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        elevation: 0,
        backgroundColor: const Color(0xFFFCFCFC),
      ),
      backgroundColor: const Color(0xFFFCFCFC),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30.h),
                Center(
                  child: Text(
                    'Wedding Planner!',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF262626),
                    ),
                  ),
                ),
                SizedBox(height: 40.h),
                _textField(
                  hintText: 'Your email address',
                  prefixIcon: const Icon(Icons.email, color: Color(0xFFA8A8A8)),
                ),
                SizedBox(height: 14.h),
                _textField(
                  hintText: 'mot de passe',
                  prefixIcon:
                      const Icon(Icons.vpn_key, color: Color(0xFFA8A8A8)),
                ),
                SizedBox(height: 14.h),
                _textField(
                  hintText: 'confirmer votre mot de passe',
                  prefixIcon:
                      const Icon(Icons.vpn_key, color: Color(0xFFA8A8A8)),
                ),
                SizedBox(
                  height: 14.h,
                ),
                getPhoneNumberWidget(),
                SizedBox(height: 60.h),
                Center(
                  child: SizedBox(
                    height: 50.h,
                    width: 300.w,
                    child: ConfirmationButton(
                        text: "Suivant",
                        color: AppColors.color3,
                        onPress: press),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void press() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignUpPhoneNumberVerification()),
    );
  }

  Widget _textField({required String hintText, required Widget prefixIcon}) =>
      TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: const Color(0xFFA8A8A8),
          ),
          prefixIcon: prefixIcon,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 17.w, vertical: 22.h),
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFD0D0D0))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFD0D0D0))),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFD0D0D0))),
        ),
      );

  Widget getPhoneNumberWidget() {
    return Card(
      color: Color(0xFFF4F4F4),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0.r),
      ),
      child: Container(
        height: 70.0.h,
        padding: EdgeInsets.symmetric(vertical: 20.0.h, horizontal: 15.0.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0.r),
        ),
        child: Row(
          children: [
            Container(
              height: 30.0.h,
              width: 40.0.w,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/tun.PNG'),
                ),
              ),
            ),
            SizedBox(width: 10.0.w),
            Text(
              '+216',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: GoogleFonts.workSans()
                    .fontFamily, // Replace with your font family.
              ),
            ),
            SizedBox(width: 10.0.w), // Adjust spacing as needed.
            VerticalDivider(
              thickness: 2.0,
            ),
            SizedBox(width: 10.0.w),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(bottom: 10.h),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none, // Remove the border if needed.
                  ),
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: GoogleFonts.workSans()
                        .fontFamily, // Replace with your font family.
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

class SignUpPhoneNumberVerification extends StatefulWidget {
  const SignUpPhoneNumberVerification({Key? key}) : super(key: key);

  @override
  State<SignUpPhoneNumberVerification> createState() =>
      _SignUpPhoneNumberVerificationState();
}

class _SignUpPhoneNumberVerificationState
    extends State<SignUpPhoneNumberVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        backgroundColor: const Color(0xFFFCFCFC),
      ),
      backgroundColor: const Color(0xFFFCFCFC),
      resizeToAvoidBottomInset: true,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 64.h,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                Text(
                  'Enter your verification code',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: GoogleFonts.workSans().fontFamily,
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  'Enter the 4-digit code we have sent to',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: GoogleFonts.workSans().fontFamily,
                  ),
                ),
                Text(
                  '+1 206-312-9956',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontFamily: GoogleFonts.workSans().fontFamily,
                  ),
                ),
                SizedBox(
                  height: 70.h,
                ),
                Container(
                  height: 70.h,
                  width: 360.w,
                  decoration: BoxDecoration(
                    // color: Colors.purple,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      VerificationTextField(),
                      SizedBox(
                        width: 10.w,
                      ),
                      VerificationTextField(),
                      SizedBox(
                        width: 10.w,
                      ),
                      VerificationTextField(),
                      SizedBox(
                        width: 10.w,
                      ),
                      VerificationTextField(),
                    ],
                  ),
                ),
                SizedBox(height: 41.h),
                Text(
                  'Didn’t receive the code?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: GoogleFonts.workSans().fontFamily,
                  ),
                ),
                SizedBox(height: 12.h),
                Text(
                  '+1 206-312-9956',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline,
                    fontFamily: GoogleFonts.workSans().fontFamily,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          SizedBox(
              // color: Colors.blue,
              height: 50.h,
              width: 300.w,
              child: ConfirmationButton(
                color: AppColors.color3,
                onPress: () => {},
              )),
          SizedBox(
            height: 88.h,
          ),
        ],
      ),
    );
  }
}

class VerificationTextField extends StatelessWidget {
  const VerificationTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.w,
      height: 60.h,
      decoration: BoxDecoration(
        color: Color(0xFFF4F4F4),
        borderRadius: BorderRadius.circular(4.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.6),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset.zero,
          ),
        ],
      ),
      child: TextField(
        textAlign: TextAlign.center,
        maxLength: 1,
        style: TextStyle(
          fontSize: 28.sp,
        ),
        decoration: InputDecoration(
          counterText: "",
        ),
      ),
    );
  }
}
