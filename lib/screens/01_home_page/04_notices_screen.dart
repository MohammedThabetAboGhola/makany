part of '00_home_screen.dart';

class NoticesScreen extends StatelessWidget {
  const NoticesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.background,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 80.h,
            child: AppBar(
              toolbarHeight: 56.h,
              backgroundColor: AppColor.primary,
              title: Text(
                S.of(context).Notices,
                style: const TextStyle(
                  color: AppColor.background,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
            ).copyWith(top: 24.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "عقارات بالقرب من شارع الجلاء",
                      style: TextStyle(fontSize: 15.sp),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          S.of(context).Up_to_for_rooms("400", "600", "4", "2"),
                          style: TextStyle(fontSize: 13.sp),
                        ),
                        Row(
                          children: [
                            Text(
                              "7",
                              style: TextStyle(fontSize: 13.sp),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.delete_forever_rounded,
                                  color: Colors.red,
                                )),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 160.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                height: 100.h,
                                width: 100.h,
                                margin: EdgeInsets.symmetric(horizontal: 10.w),
                                decoration: const BoxDecoration(
                                  image: DecorationImage(image: AssetImage(Assets.pixelHouse2), fit: BoxFit.cover),
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(S.of(context).Month("125")),
                              Row(
                                children: [
                                  SvgPicture.asset(Assets.victorBedIcon,height: 20.h,),
                                  SizedBox(width: 5.w,),
                                  Text(S.of(context).Room("3"),),
                                ],
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Divider(color: AppColor.grayColor,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "عقارات بالقرب من شارع الجلاء",
                      style: TextStyle(fontSize: 15.sp),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          S.of(context).Up_to_for_rooms("400", "600", "4", "2"),
                          style: TextStyle(fontSize: 13.sp),
                        ),
                        Row(
                          children: [
                            Text(
                              "7",
                              style: TextStyle(fontSize: 13.sp),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.delete_forever_rounded,
                                  color: Colors.red,
                                )),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 160.h,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                height: 100.h,
                                width: 100.h,
                                margin: EdgeInsets.symmetric(horizontal: 10.w),
                                decoration: const BoxDecoration(
                                  image: DecorationImage(image: AssetImage(Assets.pixelHouse2), fit: BoxFit.cover),
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(S.of(context).Month("125"))
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
