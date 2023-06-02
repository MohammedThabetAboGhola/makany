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
          "الملف الشخصي ",
          style: TextStyle(color: Colors.white),
        ),
        toolbarHeight: 56.h,
        backgroundColor: AppColor.primary,
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 250, top: 50),
            child: Container(
              height: 135,
              width: 135,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(Assets.Person),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(Radius.elliptical(100, 100.0)),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 150, top: 70),
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
            padding: const EdgeInsets.only(right: 340, top: 65),
            child: Icon(Icons.person_rounded),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 150, top: 100),
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
            padding: const EdgeInsets.only(right: 340, top: 100),
            child: Icon(Icons.email),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 150, top: 130),
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
            padding: const EdgeInsets.only(right: 340, top: 130),
            child: Icon(Icons.phone),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Divider(
              thickness: 2,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 250),
            child: Divider(
              thickness: 3,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 220, right: 50),
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
          Padding(
            padding: const EdgeInsets.only(left: 360, top: 224),
            child: Icon(Icons.restart_alt),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50, top: 380),
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
            padding: const EdgeInsets.only(right: 50, top: 300),
            child: Text(
              'الرسائل',
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
            padding: const EdgeInsets.only(right: 10, top: 300),
            child: Icon(Icons.chat_outlined),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 350, top: 160),
            child: Center(child: Icon(Icons.info_outline)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 50, top: 340),
            child: Text(
              'الاعدادات',
              style: TextStyle(
                fontFamily: 'Tajawal',
                fontSize: 20,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w500,
              ),
              softWrap: false,
            ),
          ),          Padding(
            padding: const EdgeInsets.only(right: 10, top: 340),
            child: Icon(Icons.settings),
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
                  Navigator.pushNamed(context, "/lunch_screen");
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
