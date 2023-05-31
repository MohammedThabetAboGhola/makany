import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../generated/l10n.dart';
import '../../widget/00_main_app_button.dart';

class HousesTap extends StatelessWidget {
  const HousesTap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/details_screen");
            },
            child: const HomeFirstTap(),

        );
      },
      itemCount: 10,
    );
  }
}
