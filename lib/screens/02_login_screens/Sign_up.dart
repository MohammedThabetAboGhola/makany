import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:makany/prefs/shared_pref_controller.dart';
import 'package:makany/store/shardpreferances.dart';
import '../../firebase/FBAHelper.dart';
import '../../generated/assets.dart';
import '../../models/user.dart';
import '../../utils/00_style/00_app_color.dart';
import '../00_core/01_layout_screen.dart';
import '../02_my_real_estate/00_real_estate_layout.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();



  late String selectedValue ="";


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
                            controller: phoneController,
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
                                title: const Text('مكتب عقاري'),
                                value: 'مكتب',
                                groupValue: selectedValue,
                                onChanged: (value) {
                                  setState(() {
                                    selectedValue = value!;
                                  });
                                },
                              ),
                              RadioListTile(
                                title: const Text('مؤجر'),
                                value: 'مستاجر',
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

                                // performLogin();
                                singUp();
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


   performLogin()  {
    if (checkData()) {
       // register();
    }

  }

   checkData() {
    if(nameController.text.isNotEmpty&& emailController.text.isNotEmpty
       && phoneController.text.isNotEmpty && passwordController.text.isNotEmpty){
      return true;
    }
    showMessage('ادخل البيانات بشكل صحيح', error: true);
    return false;
    }

  //  register()  {
  //
  //    String name = nameController.text;
  //    String email = emailController.text;
  //    String password = passwordController.text;
  //    String phone = phoneController.text;
  //
  //     Users user = Users (,name ,email ,phone,password,selectedValue);
  //
  //    List<Users> users = [];
  //    users.add(user);
  //
  //
  //
  //   if (user != null) {
  //
  //     if (selectedValue == "Option 1"){
  //       Navigator.pushNamed(context, "/real_estate_screen");
  //     }
  //     else if (selectedValue == "Option 2"){
  //       Navigator.pushReplacementNamed(context, '/layout_screen');
  //     }
  //
  //     else if (selectedValue.isEmpty){
  //       showMessage('الرجاء اختيار نوع الحساب', error: true);
  //     }
  //     showMessage('تم التسجيل', error: false);
  //   } else {
  //     showMessage('خطء في التسجيل', error: true);
  //   }
  // }

  void showMessage(String message, {bool error = false}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        message,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      backgroundColor: error ? Colors.red : Colors.green,
      margin: const EdgeInsets.all(10),
      behavior: SnackBarBehavior.floating,
    ));
  }


  Future singUp () async{

    if(emailController.text.isNotEmpty &&
        nameController.text.isNotEmpty &&
        passwordController.text.isNotEmpty&& phoneController.text.isNotEmpty){


      UserCredential? userCredential = await FirebaseAuthHelper.firebaseAuthHelper.createAccount(Users(
          email: emailController.text,
          password: passwordController.text,
          name: nameController.text,phone: phoneController.text,accountType: selectedValue
      ),context);

      SharedPrefController_1().saveAccountType(accountType: selectedValue);

      String? uidUser = userCredential?.user?.uid;


      if(selectedValue == "مكتب"){
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return RealEstateLayout();
        }));
      }else{
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return LayoutScreen();
        }));
      }

    }
  }

}
