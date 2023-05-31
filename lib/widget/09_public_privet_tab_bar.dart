part of'00_main_app_button.dart';

class PublicPrivetTabBar extends StatelessWidget {
  const PublicPrivetTabBar({
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
                image: AssetImage(Assets.pixelHouse1),
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
                "شقة في برج الطاهر",
                style: TextStyle(fontSize: 13.sp),
              ),
              const Spacer(),
              Text(
                S.of(context).House,
                style: TextStyle(fontSize: 13.sp),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              // Monthly_rent
              // Remaining_to_receive_the_rent
              Text(
                S.of(context).Monthly_rent("200"),
                style: TextStyle(fontSize: 15.sp),
              ),
            ],
          ),
          Row(
            children: [
              // Monthly_rent
              // Remaining_to_receive_the_rent
              Text(
                S.of(context).Remaining_to_receive_the_rent("5"),
                style: TextStyle(fontSize: 15.sp),
              ),
            ],
          ),

        ],
      ),
    );
  }
}