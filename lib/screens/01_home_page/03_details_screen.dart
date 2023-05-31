part of '00_home_screen.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.share),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_forward))
        ],
        backgroundColor: Colors.white.withOpacity(0.8),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              Assets.pixelHouse4,
              height: 300.h,
              width: double.maxFinite,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w).copyWith(top: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: S.of(context).Monthly,
                          style: TextStyle(color: AppColor.primary, fontSize: 15.sp),
                        ),
                        WidgetSpan(
                            child: SizedBox(
                          width: 5.w,
                        )),
                        TextSpan(
                          text: "250\$",
                          style: TextStyle(color: AppColor.primary, fontSize: 15.sp),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    S.of(context).Location,
                    style: TextStyle(fontSize: 18.sp),
                  ),
                  Text(
                    "غزة-شارع الشهداء-مقابل مترو- عمارة الحساينة",
                    style: TextStyle(fontSize: 15.sp),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    S.of(context).Description_of_the_property,
                    style: TextStyle(fontSize: 18.sp),
                  ),
                  const Text(
                      "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et"),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    S.of(context).Apartment_directions,
                    style: TextStyle(fontSize: 18.sp),
                  ),
                  Text(
                    "شمالي شرقي",
                    style: TextStyle(fontSize: 15.sp),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          DescriptionRowDetails(iconPath: Assets.victorBedIcon, text: "غرفة نوم", quantity: 4),
                          DescriptionRowDetails(
                            iconPath: Assets.victorTextSmollAndKapetal,
                            text: "مساحة الشقة",
                            quantity: 170.0,
                            isInt: false,
                            iconSize: 15,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          DescriptionRowDetails(iconPath: Assets.victorRoomIcon, text: "الصالات", quantity: 2),
                          DescriptionRowDetails(iconPath: Assets.victorMenuIcon, text: "الطابق", quantity: 2, iconSize: 12),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          DescriptionRowDetails(iconPath: Assets.victorBathroomIcon, text: "دورات المياه", quantity: 2),
                          DescriptionRowDetails(iconPath: Assets.victorNumberTebesIcon, text: "رقم الشقة", quantity: 23, iconSize: 15),
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Wrap(
                        children: [
                          FilterFeatures(isSelect: false,text: "مصعد"),
                          FilterFeatures(isSelect: true,text: "معفش"),
                          FilterFeatures(isSelect: true,text: "قريب من المسجد"),
                          FilterFeatures(isSelect: false,text: "قريب من المدرسة"),
                          FilterFeatures(isSelect: true,text: "تكييف"),
                          FilterFeatures(isSelect: false,text: "كراج"),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




