import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tunisiaweddingplanner/screens/BottomBarScreen.dart';
import 'package:tunisiaweddingplanner/screens/PublicationDetails/widget/ConfirmationButton.dart';
import 'package:tunisiaweddingplanner/screens/SignUpScreen/SignUpScreen.dart';
import 'package:tunisiaweddingplanner/utils/AppColors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFCFC),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40.h),
                SizedBox(height: 62.h),
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
                Padding(
                  padding: EdgeInsets.only(right: 37.w, top: 8.h, bottom: 23.h),
                  child: Text(
                    'Cette application est destinée à tous les utilisateurs qui souhaitent découvrir et connaître les besoins et les prix des mariages en Tunisie. \nConnectez-vous et commencez ',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF262626),
                      height: 1.28,
                    ),
                  ),
                ),
                _textField(
                  hintText: 'Your email address',
                  prefixIcon: const Icon(Icons.email, color: Color(0xFFA8A8A8)),
                ),
                SizedBox(height: 14.h),
                _textField(
                  hintText: '**********',
                  prefixIcon:
                      const Icon(Icons.vpn_key, color: Color(0xFFA8A8A8)),
                ),
                SizedBox(height: 85.h),
                Center(
                  child: SizedBox(
                    height: 50.h,
                    width: 300.w,
                    child: ConfirmationButton(
                        color: AppColors.color3, onPress: press),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                _button(text: 'Mot de passe oublié ?', isTransparent: true),
                _button(
                    text: 'Créer un nouveau compte',
                    isTransparent: true,
                    nextScreen: SignUpScreen()),
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
      MaterialPageRoute(builder: (context) => AppScreen()),
    );
  }

  Widget _button(
          {required String text,
          bool isTransparent = false,
          Widget? nextScreen}) =>
      ElevatedButton(
        onPressed: () {
          if (nextScreen != null) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => nextScreen),
            );
          }
        },
        style: ElevatedButton.styleFrom(
          primary: isTransparent ? Colors.transparent : const Color(0xFF0043CE),
          elevation: 0,
          shadowColor: Colors.transparent,
          fixedSize: Size(342.w, 30.h),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 13.sp,
            fontWeight: FontWeight.w300,
            color: isTransparent ? AppColors.color3 : const Color(0xFFF4F4F4),
          ),
        ),
      );

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
}
