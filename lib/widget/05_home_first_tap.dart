part of '00_main_app_button.dart';

class HomeFirstTap extends StatelessWidget {
  const HomeFirstTap({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.w).copyWith(top: 24.h),
      child: Column(
        children: [
          Container(
            height: 120.h,
            width: double.maxFinite,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage(Assets.pixelHouse2),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.r),
                topRight: Radius.circular(20.r),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              Text(
                S.of(context).Month("250"),
                style: TextStyle(fontSize: 13.sp),
              ),
              const Spacer(),
              Text(
                "${S.of(context).M("170")} | ${S.of(context).Bathroom("2")} | ${S.of(context).Room("4")}",
                style: TextStyle(fontSize: 13.sp),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Text(
                  "غزة-شارع الشهداء-مقابل مترو-عمارة الحساينة",
                  style: TextStyle(fontSize: 15.sp),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              Text(
                "يوسف ابو محمد",
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w700),
              ),
            ],
          )
        ],
      ),
    );
  }
}
