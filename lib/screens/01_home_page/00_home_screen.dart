import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../generated/assets.dart';
import '../../generated/l10n.dart';
import '../../provider/02_filter_provider.dart';
import '../../utils/00_style/00_app_color.dart';
import '../../utils/01_helpers/functions.dart';
import '../../widget/00_main_app_button.dart';
import '01_houses_tap.dart';

part '02_filter_edit_screen.dart';

part '03_details_screen.dart';

part '04_notices_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(

      color: AppColor.background,
      child: Column(
        children: [
          SizedBox(
            height: 130.h,
            child: AppBar(
              backgroundColor: AppColor.primary,
              toolbarHeight: 56.h,
              bottom: AppBar(
                toolbarHeight: 56.h,
                title: TabBar(
                  controller: _tabController,
                  tabs: [
                    Tab(text: S.of(context).Homes),
                    Tab(text: S.of(context).Stores),
                    Tab(text: S.of(context).Workspace),
                  ],
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorWeight: 3,
                ),
              ),
              title: Text(
                S.of(context).Home,
                style:  TextStyle(color: Colors.white,fontSize: 20.sp),
              ),
              actions: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.w),
                  child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/filter_edit_screen");
                      },
                      child: SvgPicture.asset(
                        Assets.victorFilterIcon,
                        height: 24.r,
                        colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                      )),
                )
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                HousesTap(),
                HousesTap(),
                HousesTap(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
