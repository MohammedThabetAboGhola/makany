
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../widget/00_main_app_button.dart';
import '../00_style/00_app_color.dart';

mixin Helpers {
  Future<void> showSnakBar(
      BuildContext context, {
        required String message,
        bool error = false,
      }) async {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 3),
        content: Text(message),
        backgroundColor: error ? Colors.red.shade700 : Colors.green,
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }


  Future<void> progressDialog({required BuildContext context, required String title, bool error = false}) async {
    await showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  title,
                  style: TextStyle(color: error ? AppColor.error : AppColor.onSecondary),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 60.h,
                  width: 60.h,
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget slimmerForImageLoadingCache(context, url) {
    return ShimmerWidget(
      width: double.infinity,
      height: double.infinity,
      baseColor: AppColor.secondary.withOpacity(0.1),
      highlightColor: Colors.white,
    );
  }


  Widget slimmerForImageLoading(context, child, loadingProgress) {
    if (loadingProgress == null) {
      return child;
    }
    return ShimmerWidget(
      width: double.infinity,
      height: double.infinity,
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.white,
    );
  }

}