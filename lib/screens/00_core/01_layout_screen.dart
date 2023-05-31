import 'package:flutter/material.dart';
import 'package:makany/screens/01_home_page/booking.dart';
import 'package:provider/provider.dart';

import '../../generated/assets.dart';
import '../../generated/l10n.dart';
import '../../provider/01_layout_provider.dart';
import '../../utils/00_style/00_app_color.dart';
import '../../widget/00_main_app_button.dart';
import '../01_home_page/00_home_screen.dart';
import '../01_home_page/Profile.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/real_estate_screen");
        },
        child: const Icon(Icons.navigate_next_rounded),
      ),
      bottomNavigationBar: Selector<LayoutProvider, int>(
        selector: (context, provider) => provider.pageCurrentIndex,
        builder: (context, value, child) {
          return MyCustomBottomNavigationBar(
            currentIndex: value,
            selectedItemColor: AppColor.primary,
            items: [
              NavigationBarItem(
                svgAssetSelect: Assets.victorIconIonicMdHome,
                svgAssetNotSelect: Assets.victorIconFeatherHome,
                label: S.of(context).Home,
              ),
              NavigationBarItem(
                svgAssetSelect: Assets.victorIconMaterialAddAlert,
                svgAssetNotSelect: Assets.victorIconMaterialAddAlertSs,
                label: S.of(context).Notices,
              ),
              NavigationBarItem(
                svgAssetSelect: Assets.victorIconPaymentInvoiceSign,
                svgAssetNotSelect: Assets.victorIconPaymentInvoiceSignO,
                label: S.of(context).Bookings,
              ),
              NavigationBarItem(
                svgAssetSelect: Assets.victorIconMaterialPerson,
                svgAssetNotSelect: Assets.victorIconMaterialPersonOutline,
                label: S.of(context).Profile,
              ),
            ],
            onTabTapped: (int index) {
              LayoutProvider layoutProvider = Provider.of(context, listen: false);
              layoutProvider.changePage(pageIndex: index).then((value) {
                layoutProvider.layoutPageController.jumpToPage(index);
              });
            },
          );
        },
      ),
      body: Consumer<LayoutProvider>(
        builder: (context, provider, child) {
          return PageView(
            controller: provider.layoutPageController,
            onPageChanged: (value) {
              LayoutProvider layoutProvider = Provider.of<LayoutProvider>(context, listen: false);
              layoutProvider.changePage(pageIndex: value);
            },
            children: [
              const HomeScreen(),
              const NoticesScreen(),
             const Booking(),
              Profile(),
            ],
          );
        },
      ),
    );
  }
}
