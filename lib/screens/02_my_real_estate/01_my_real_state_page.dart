import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:makany/screens/02_my_real_estate/DrawerItem.dart';

import '../../generated/assets.dart';
import '../../generated/l10n.dart';
import '../../utils/00_style/00_app_color.dart';
import '00_real_estate_layout.dart';

class MyRealStatePage extends StatefulWidget {
  const MyRealStatePage({Key? key}) : super(key: key);

  @override
  State<MyRealStatePage> createState() => _MyRealStatePageState();
}

class _MyRealStatePageState extends State<MyRealStatePage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          backgroundColor:AppColor.primary ,
          child: StreamBuilder<DocumentSnapshot>(
            stream: FirebaseFirestore.instance
                .collection("Users")
                .doc(FirebaseAuth.instance.currentUser!.uid)
                .snapshots(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.hasError) {
                return const Text('Something went wrong');
              }

              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Text("Loading");
              }
              return Column(
                children: [
                  SizedBox(
                    height: 100.h,
                  ),
                  CircleAvatar(
                    backgroundImage:
                    NetworkImage(snapshot.data['imageUrl'].toString()),
                    radius: 50.r,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    snapshot.data['name'],
                    style: TextStyle(
                        fontSize: 22.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  const DrawerItem(name: "Profile", icon: Icons.person),
                  const Divider(
                    color: Colors.white,
                    endIndent: 10,
                    indent: 10,
                  ),
                  const Divider(
                    color: Colors.white,
                    endIndent: 10,
                    indent: 10,
                  ),
                  const DrawerItem(
                    name: "Settings",
                    icon: Icons.settings,
                  ),
                  const Divider(
                    color: Colors.white,
                    endIndent: 10,
                    indent: 10,
                  ),
                  DrawerItem(
                    name: "Logout",
                    icon: Icons.logout,
                    onTap: () async {
                      await FirebaseAuth.instance.signOut();
                   //   Get.offNamed("/login_screen");
                    },
                  ),
                  const Divider(
                    color: Colors.white,
                    endIndent: 10,
                    indent: 10,
                  ),
                ],
              );
            },
          )),
      body: Material(
        color: AppColor.background,
        child: Column(
          children: [
            SizedBox(
              height: 130.h,
              child: Builder(
                builder: (context) => AppBar(
                  backgroundColor: AppColor.primary,
                  leading: IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(
                    S.of(context).Real_estate,
                    style: const TextStyle(
                      color: AppColor.background,
                    ),
                  ),
                  bottom: TabBar(
                    controller: _tabController,
                    labelColor: AppColor.background,
                    unselectedLabelColor: AppColor.background,
                    tabs: [
                      Tab(
                        text: S.of(context).General_real_estate,
                        icon: const Icon(
                          Icons.public,
                          color: Colors.white,
                        ),
                      ),
                      Tab(
                        text: S.of(context).Private_real_estate,
                        icon: const Icon(
                          Icons.lock_open,
                          color: Colors.white,
                        ),
                      ),
                    ],
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorWeight: 3,
                  ),
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  PublicPrivetList(),
                  PublicPrivetList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
