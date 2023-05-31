import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../generated/assets.dart';
import '../../utils/00_style/00_app_color.dart';


class LunchScreen extends StatefulWidget {
  const LunchScreen({Key? key}) : super(key: key);

  @override
  State<LunchScreen> createState() => _LunchScreenState();
}

class _LunchScreenState extends State<LunchScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 500),(){
      Navigator.pushNamedAndRemoveUntil(context, "/login_screen", (route) => false,);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primary,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            SvgPicture.asset(Assets.victorAppLunchScreenImage,height: 170.h,),
            Text(
              'Makani',
              style: GoogleFonts.notoSansArabic( fontSize: 24,
                color: Colors.white,

                fontWeight: FontWeight.w500,
                ),

              textHeightBehavior: const TextHeightBehavior(applyHeightToFirstAscent: false),
            )
          ],
        ),
      ),
    );
  }


}
