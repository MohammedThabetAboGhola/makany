import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../generated/assets.dart';
import '../../utils/00_style/00_app_color.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  late String selectedValue = "";


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
                    Container(

                      child : Padding(
                        padding: const EdgeInsets.only(bottom: 100),
                        child: Container(
                          child: Center(
                            child: Text(
                              "تسجيل",
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

                          TextFormField(
                            keyboardType: TextInputType.text,
                            controller: nameController,
                            validator: (value){
                              RegExp regex = RegExp(
                                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
                              if (value!.isEmpty) {
                                return 'الرجاء إدخال الإيميل';
                              } else if (!regex.hasMatch(value)) {
                                return 'الإيميل غير صحصيح';
                              } else {
                                return null;
                              }
                            },
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.person,color: Colors.grey),
                              hintText: "اسم المستخدم",
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

                          TextFormField(
                            validator: (value){
                              RegExp regex = RegExp(
                                  r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
                              if (value!.isEmpty) {
                                return 'الرجاء إدخال الإيميل';
                              } else if (!regex.hasMatch(value)) {
                                return 'الإيميل غير صحصيح';
                              } else {
                                return null;
                              }},
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
                            keyboardType: TextInputType.phone,

                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.phone,color: Colors.grey),
                              hintText: "رقم الهاتف",
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
                                    color: Colors.blue
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(height: 25,),

                          TextField(
                            keyboardType: TextInputType.emailAddress,
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
                                    color: Colors.blue
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10,),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 200),
                                child: Text('نوع صاحب العقار'),
                              ),
                              RadioListTile(
                                title: Text('مكتب عقاري'),
                                value: 'Option 1',
                                groupValue: selectedValue,
                                onChanged: (value) {
                                  setState(() {
                                    selectedValue = value!;
                                  });
                                },
                              ),
                              RadioListTile(
                                title: Text('مؤجر'),
                                value: 'Option 2',
                                groupValue: selectedValue,
                                onChanged: (value) {
                                  setState(() {
                                    selectedValue = value!;
                                  });
                                },
                              ),
                            ],
                          ),

                          const SizedBox(height: 25,),
                          SizedBox(
                            width: double.infinity,
                            height: 60,
                            child: ElevatedButton(
                              onPressed: (){

                                // singUp();
                              },
                              style: ElevatedButton.styleFrom(
                                primary: AppColor.primary,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)
                                ),
                              ),
                              child: const Text('تسجيل',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Cairo',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 8,),
                          Padding(
                            padding: const EdgeInsets.only(right: 65),
                            child: Row(
                              children: [
                                const Text(" لديك حساب فعال؟",
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
                                      Navigator.pushReplacementNamed(context,'/login_screen');
                                    },
                                    child: const Text(' دخول الان',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: AppColor.primary,
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
