import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:makany/screens/02_my_real_estate/Chat.dart';
import 'package:provider/provider.dart';

import '../../generated/assets.dart';
import '../../generated/l10n.dart';
import '../../provider/03_my_real_estate_provider.dart';
import '../../utils/00_style/00_app_color.dart';
import '../../widget/00_main_app_button.dart';
import '01_my_real_state_page.dart';

part '02_public_privet_list.dart';

part '03_add_real_estate.dart';

class RealEstateLayout extends StatelessWidget {
  const RealEstateLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Selector<MyRealEstateProvider, int>(
        selector: (context, provider) => provider.pageCurrentIndex,
        builder: (context, value, child) {
          return MyCustomBottomNavigationBar(
            currentIndex: value,
            selectedItemColor: AppColor.primary,
            items: [
              NavigationBarItem(
                svgAssetSelect: Assets.victorIconIonicMdHome,
                svgAssetNotSelect: Assets.victorIconFeatherHome,
                label: S.of(context).My_real_estate,
              ),
              NavigationBarItem(
                svgAssetSelect: Assets.victorIconSimpleAddthis,
                svgAssetNotSelect: Assets.victorAddIcon,
                label: S.of(context).Add_real_estate,
              ),
              NavigationBarItem(
                svgAssetSelect: Assets.victorIconMaterialMessage,
                svgAssetNotSelect:
                    Assets.victorMessageIconForButtomNavigationBar,
                label: S.of(context).Messages,
              ),
            ],
            onTabTapped: (int index) {
              MyRealEstateProvider myRealState =
                  Provider.of(context, listen: false);
              myRealState.changePageIndex(index: index).then((value) {
                myRealState.myRealEstateController.jumpToPage(index);
              });
            },
          );
        },
      ),
      body: Consumer<MyRealEstateProvider>(
        builder: (context, provider, child) {
          return PageView(
            controller: provider.myRealEstateController,
            onPageChanged: (value) {
              MyRealEstateProvider myRealState =
                  Provider.of<MyRealEstateProvider>(context, listen: false);
              myRealState.changePageIndex(index: value);
            },
            children: [
              const MyRealStatePage(),
              SingleChildScrollView(
                child: CancelableVerticalStepper(
                  steps: [
                    Step(
                        title: Text(
                          S.of(context).Choose_the_type_of_property,
                          style: TextStyle(fontSize: 15.sp),
                        ),
                        content: CustomDropDounMenu()),
                    Step(
                      title: Text(
                        S.of(context).Location,
                        style: TextStyle(fontSize: 15.sp),
                      ),
                      content: TextFormField(
                        controller: Locations,
                      ),
                    ),
                    Step(
                      title: Text(
                        S.of(context).Additional_details,
                        style: TextStyle(fontSize: 15.sp),
                      ),
                      content: TextFormField(
                        controller: Additional_detail,
                        onTap: () {
                          print(Locations);
                        },
                      ),
                    ),
                    Step(
                      title: Text(
                        S.of(context).Price_and_duration_of_leave,
                        style: TextStyle(fontSize: 15.sp),
                      ),
                      content: TextFormField(
                        controller: Price_and_duration_of_leaves,
                      ),
                    ),
                    Step(
                        title: Text(
                          S.of(context).Increase_hours,
                          style: TextStyle(fontSize: 15.sp),
                        ),
                        content: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${time.hour}:${time.minute}",
                                style: TextStyle(fontSize: 25),
                              ),
                              ElevatedButton(
                                child: Text("select Time"),
                                onPressed: () async {
                                  TimeOfDay? newTime = await showTimePicker(
                                      context: context, initialTime: time);
                                  if (newTime == null) return;
                                    time = newTime;
                                }
                              )
                            ],
                          ),
                        )),
                    Step(
                      title: Text(
                        S.of(context).Upload_photo,
                        style: TextStyle(fontSize: 15.sp),
                      ),
                      content: Text('This is the content of step 3'),
                    ),
                  ],
                  onCancel: () {
                    // Handle cancel button tap
                  },
                  onContinue: () {
                    // Handle continue button tap
                  },
                ),
              ),
              ChatPage(),
            ],
          );
        },
      ),
    );
  }
}

class CustomDropDounMenu extends StatefulWidget {
  @override
  _CustomDropDounMenuState createState() => _CustomDropDounMenuState();
}

final Locations = TextEditingController();
final Additional_detail = TextEditingController();
final Price_and_duration_of_leaves = TextEditingController();
TimeOfDay time = TimeOfDay(hour: 9, minute: 30);

class _CustomDropDounMenuState extends State<CustomDropDounMenu> {
  int? _selectedValue;
  List<String> items = ["منزل", "شقة", "متجر"];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: DropdownButtonFormField<int>(
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Choose an item',
        ),
        value: _selectedValue,
        onChanged: (int? value) {
          setState(() {
            _selectedValue = value;
          });
        },
        items: List.generate(
          3,
          (index) => DropdownMenuItem<int>(
            value: index,
            child: Text(items[index]),
          ),
        ),
      ),
    );
  }
}
