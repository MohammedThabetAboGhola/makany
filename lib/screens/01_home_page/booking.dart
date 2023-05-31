import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../generated/assets.dart';
import '../../utils/00_style/00_app_color.dart';

class Booking extends StatefulWidget {
  const Booking({Key? key}) : super(key: key);

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  bool Likes = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Booking",
          style: TextStyle(color: Colors.white),
        ),
        toolbarHeight: 56.h,
        backgroundColor: AppColor.primary,
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Container(
              height: 150,
              width: 390,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: Colors.grey.shade200,
                boxShadow: [
                  BoxShadow(
                    color:
                        Colors.black.withOpacity(0.3), // Set the shadow color
                    offset: Offset(0, 5), // Set the offset of the shadow
                    blurRadius: 5, // Set the blur radius of the shadow
                  ),
                ],
              ),
              // Rest of your code...

              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Container(
                      height: 300,
                      width: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 200),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          child: Image(
                            image: AssetImage(Assets.pixelHouse2),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 50),
                    child: Text(
                      "اسم الشقة : عمارة ليد طابق ثالث",
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 140, top: 90),
                    child: Text(
                      "المساحة: 300متر",
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
              height: 150,
              width: 390,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: Colors.grey.shade200,
                boxShadow: [
                  BoxShadow(
                    color:
                        Colors.black.withOpacity(0.3), // Set the shadow color
                    offset: Offset(0, 5), // Set the offset of the shadow
                    blurRadius: 5, // Set the blur radius of the shadow
                  ),
                ],
              ),
              // Rest of your code...

              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Container(
                      height: 300,
                      width: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 200),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          child: Image(
                            image: AssetImage(Assets.pixelHouse1),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 50),
                    child: Text(
                      "اسم الشقة : روق عصري شارع نصر",
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 140, top: 90),
                    child: Text(
                      "المساحة: 120متر",
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 300, top: 50),
                    child: GestureDetector(
                      onTap: (){
                        if(Likes==false) {
                          Likes==true;
                          _controller.forward();
                        }else{
                          Likes==false;
                          _controller.reverse();

                        }
                      },
                      child: Lottie.asset(Assets.like,
                          width: 100, height: 100,controller: _controller ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
