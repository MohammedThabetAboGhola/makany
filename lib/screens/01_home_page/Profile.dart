import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:makany/models/user.dart';

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
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.white),
        ),
        toolbarHeight: 56.h,
        backgroundColor: AppColor.primary,
      ),
      backgroundColor: Colors.white,
      body:StreamBuilder<DocumentSnapshot>(
        stream: FirebaseFirestore.instance
            .collection("Users")
            .doc(FirebaseAuth.instance.currentUser!.uid)
            .snapshots(),

          builder: (context, AsyncSnapshot snapshot){
            if (snapshot.hasError) {
              return const Text('Something went wrong');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Text("Loading");
            }
            return Stack(


                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 250, top: 50),
                    child: Container(
                      height: 135,
                      width: 135,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(Assets.Person),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: const BorderRadius.all(Radius.elliptical(100, 100.0)),
                        border: Border.all(width: 1.0, color: const Color(0xff707070)),
                      ),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.only(left: 180, top: 70),
                    child: Text(
                      snapshot.data['name'],
                      style: const TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 18,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w800,
                      ),
                      softWrap: false,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 150, top: 65),
                    child: Icon(Icons.person_rounded),
                  ),
                   Padding(
                    padding: const EdgeInsets.only(left: 80, top: 100),
                    child: Text(
                      snapshot.data['email'],
                      style: const TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 18,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w800,
                      ),
                      softWrap: false,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 50, top: 93),
                    child: Icon(Icons.email),
                  ),
                   Padding(
                    padding: const EdgeInsets.only(left: 130, top: 130),
                    child: Text(
                      snapshot.data['phone'],
                      style: const TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 18,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w800,
                      ),
                      softWrap: false,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 100, top: 124),
                    child: Icon(Icons.phone),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 200),
                    child: Divider(
                      thickness: 2,
                      color: Colors.grey,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 250),
                    child: Divider(
                      thickness: 3,
                      color: Colors.grey,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 220, left: 240),
                    child: Text(
                      'آخر المشاهدات',
                      style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 20,
                        color: Color(0xff000000),
                      ),
                      softWrap: false,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 360, top: 224),
                    child: Icon(Icons.restart_alt),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 260, top: 380),
                    child: Text(
                      'المساعدة',
                      style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 20,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: false,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 270, top: 300),
                    child: Text(
                      'الرسائل',
                      style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 20,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: false,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 360, top: 300),
                    child: Icon(Icons.chat_outlined),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 350, top: 160),
                    child: Center(child: Icon(Icons.info_outline)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 260, top: 340),
                    child: Text(
                      'الاعدادات',
                      style: TextStyle(
                        fontFamily: 'Tajawal',
                        fontSize: 20,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: false,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 360, top: 340),
                    child: Icon(Icons.settings),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 190, top: 260),
                    child: Center(
                      child: GestureDetector(
                        child: const Text(
                          'تسجيل الخروج',
                          style: TextStyle(
                            fontFamily: 'Tajawal',
                            fontSize: 20,
                            color: Color(0xff000000),
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
                  const Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: 350, top: 255),
                      child: Icon(Icons.exit_to_app),
                    ),),
                ],
            );
          },
      )
    );
  }



}


