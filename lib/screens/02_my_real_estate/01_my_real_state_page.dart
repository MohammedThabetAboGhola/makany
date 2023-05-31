import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../generated/l10n.dart';
import '../../utils/00_style/00_app_color.dart';
import '00_real_estate_layout.dart';

class MyRealStatePage extends StatefulWidget {
  const MyRealStatePage({Key? key}) : super(key: key);

  @override
  State<MyRealStatePage> createState() => _MyRealStatePageState();
}

class _MyRealStatePageState extends State<MyRealStatePage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
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
              leading: IconButton(
                onPressed: () {},
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
    );
  }
}
