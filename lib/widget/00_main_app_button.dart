import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../generated/l10n.dart';
import '../generated/assets.dart';
import '../utils/00_style/00_app_color.dart';

part '01_main_app_text_field.dart';

part '02_slimmer_widget.dart';

part '03_custom_tap_bar.dart';

part '04_custom_buttom_navigation_bar.dart';

part '05_home_first_tap.dart';

part '06_range_sider_widget.dart';

part '07_description_row_details.dart';

part '08_filter_features.dart';

part '09_public_privet_tab_bar.dart';

class MainAppButton extends StatelessWidget {
  final String? buttonText;
  final double? width;
  final BoxDecoration? decoration;
  final Color? textColor;
  final bool haveSelectColor;
  final Color? backgroundColor;

  const MainAppButton({
    super.key,
    required this.onButtonTap,
    this.isLastPage = false,
    this.buttonText,
    this.width,
    this.decoration,
    this.textColor,
    this.haveSelectColor = true,
    this.backgroundColor,
  });

  final VoidCallback? onButtonTap;
  final bool isLastPage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 253.w,
      height: 55.h,
      clipBehavior: Clip.antiAlias,
      decoration: decoration ??
          BoxDecoration(
            color: backgroundColor ?? AppColor.primary,
            borderRadius: BorderRadius.circular(8.0),
          ),
      child: MaterialButton(
        onPressed: onButtonTap,
        splashColor: haveSelectColor ? AppColor.primary.withOpacity(0.6) : Colors.transparent,
        hoverColor: haveSelectColor ? AppColor.primary.withOpacity(0.6) : Colors.transparent,
        focusColor: haveSelectColor ? AppColor.primary.withOpacity(0.6) : Colors.transparent,
        padding: EdgeInsets.zero,
        child: Text(
          buttonText ?? (isLastPage ? S.of(context).Get_Started : S.of(context).Next),
          style: TextStyle(
            fontSize: 16.sp,
            color: textColor ?? const Color(0xffffffff),
            fontWeight: FontWeight.w700,
          ),
          textHeightBehavior: const TextHeightBehavior(applyHeightToFirstAscent: false),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
