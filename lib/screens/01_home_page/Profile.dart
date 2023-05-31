import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../generated/assets.dart';

import '../../utils/00_style/00_app_color.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.white),
        ),
        toolbarHeight: 56.h,
        backgroundColor: AppColor.primary,
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [

            Image.asset(Assets.Person),


          Padding(
            padding: const EdgeInsets.only(left: 180, top: 70),
            child: Text(
              'Ahmed',
              style: TextStyle(
                fontFamily: 'Tajawal',
                fontSize: 18,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w800,
              ),
              softWrap: false,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 150, top: 65),
            child: Icon(Icons.person_rounded),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80, top: 100),
            child: Text(
              'ahmed@gmail.com',
              style: TextStyle(
                fontFamily: 'Tajawal',
                fontSize: 18,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w800,
              ),
              softWrap: false,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, top: 93),
            child: Icon(Icons.email),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 130, top: 130),
            child: Text(
              '0598455550',
              style: TextStyle(
                fontFamily: 'Tajawal',
                fontSize: 18,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w800,
              ),
              softWrap: false,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100, top: 124),
            child: Icon(Icons.phone),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Divider(
              thickness: 2,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 310),
            child: Divider(
              thickness: 3,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70, left: 200),
            child: Center(
              child: Text(
                'آخر المشاهدات',
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  fontSize: 20,
                  color: const Color(0xff000000),
                ),
                softWrap: false,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 360, top: 330),
            child: Icon(Icons.restart_alt),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 260, top: 380),
            child: Text(
              'المساعدة',
              style: TextStyle(
                fontFamily: 'Tajawal',
                fontSize: 20,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w500,
              ),
              softWrap: false,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 350, top: 160),
            child: Center(child: Icon(Icons.info_outline)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 190, top: 260),
            child: Center(
              child: GestureDetector(
                child: Text(
                  'تسجيل الخروج',
                  style: TextStyle(
                    fontFamily: 'Tajawal',
                    fontSize: 20,
                    color: const Color(0xff000000),
                    fontWeight: FontWeight.w500,
                  ),
                  softWrap: false,
                ),
                onTap: () {
                  Navigator.pushNamed(context, "");
                },
              ),
            ),
          ),
          Center(
              child: Padding(
            padding: const EdgeInsets.only(left: 350, top: 255),
            child: Icon(Icons.exit_to_app),
          ))
        ],
      ),
    );
  }
}
