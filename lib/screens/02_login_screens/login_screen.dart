import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:makany/utils/00_style/00_app_color.dart';

import '../../generated/assets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                child: Stack(
                  children: <Widget>[
                   Padding(
                     padding: const EdgeInsets.only(bottom: 100),
                     child: Container(
                       child: Center(
                         child: Text(
                           "دخول",
                           style: TextStyle(
                             fontFamily: 'Tajawal',
                             fontSize: 25,
                             color: AppColor.surface,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                       ),
                       width: 180,
                       height: 150,
                       decoration: BoxDecoration(
                         color: AppColor.primary,
                         borderRadius: BorderRadius.only(
                           bottomLeft: Radius.circular(100),
                           topLeft: Radius.circular(30),
                           bottomRight: Radius.circular(50)
                         )
                       ),
                     ),
                   ),

                    Padding(
                      padding: const EdgeInsets.only(top: 115),
                      child: Center(
                        child: Container(
                          child: SvgPicture.asset(Assets.victorAppLunchScreenImage1,height: 120.h,),
                        ),
                      ),
                    ),



                    Container(
                      padding: const EdgeInsets.only(top: 300,left: 20,right: 20),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            keyboardType: TextInputType.emailAddress,
                            controller: emailController,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.email,color: Colors.grey),
                              hintText: "البريد الإلكتروني",
                              hintStyle: const TextStyle(
                                  fontSize: 17,
                                  fontFamily: 'Cairo',
                                  color: Colors.grey
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: const BorderSide(
                                      width: 2,
                                      color: Colors.grey
                                  )
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                    width: 2,
                                    color: Colors.grey
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(height: 25,),

                          TextField(
                            keyboardType: TextInputType.visiblePassword,
                            controller: passwordController,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.lock,color: Colors.grey),
                              hintText: "كلمة المرور",
                              hintStyle: const TextStyle(
                                  fontSize: 17,
                                  fontFamily: 'Cairo',
                                  color: Colors.grey
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide: const BorderSide(
                                      width: 2,
                                      color: Colors.grey
                                  )
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(
                                    width: 2,
                                    color: Colors.grey
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(height: 2,),

                          Padding(
                            padding: const EdgeInsets.only(),
                            child: Align(
                              alignment: AlignmentDirectional.centerStart,
                              child: TextButton(
                                onPressed: (){
                                  Navigator.pushReplacementNamed(context,'/forget_password');
                                },
                                child: const Text(' نسيت كلمة المرور ؟',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Cairo',
                                      color: AppColor.primary,
                                      fontWeight: FontWeight.bold
                                  ),),
                              ),
                            ),
                          ),

                          SizedBox(
                            width: double.infinity,
                            height: 60,
                            child: ElevatedButton(
                              onPressed: (){
                                Navigator.pushReplacementNamed(context, '/layout_screen');
                                // login();

                              },
                              style: ElevatedButton.styleFrom(
                                primary: AppColor.primary,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)
                                ),
                              ),
                              child: const Text('تسجيل الدخول',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Cairo',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 25,),
                          Row(
                            children: [
                              InkWell(
                                onTap: (){},
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(width: 30,),
                                      Text('Facebook',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),) ,

                                      SizedBox(width: 5,),
                                      Image.asset(
                                        Assets.pixelFacebook,
                                        height: 30,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 100,),

                              InkWell(
                                onTap: (){},
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Row(
                                    children: [
                                      Text('Google',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),) ,
                                      SizedBox(width: 5,),
                                      Image.asset(
                                        Assets.pixelGoogle,
                                        height: 30,
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                            ],
                          ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.only(right: 65),
                            child: Row(
                              children: [
                                const Text("ليس لديك حساب ؟",
                                  style: TextStyle(fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Cairo',
                                      color: Colors.black
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional.centerEnd,
                                  child: TextButton(
                                    onPressed: (){
                                      Navigator.pushReplacementNamed(context, "/sign_up");
                                    },
                                    child: const Text('التسجيل',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color:AppColor.primary,
                                        fontFamily: 'Cairo',
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )

                        ],
                      ),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),);
  }


}
