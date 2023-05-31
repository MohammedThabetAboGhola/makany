part of '00_home_screen.dart';

class FilterEditScreen extends StatelessWidget {
  const FilterEditScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        automaticallyImplyLeading: false,
        title: Text(
          S.of(context).Filter_edit,
          style: TextStyle(
            fontSize: 18.sp,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w).copyWith(top: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).The_type_of_property,
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              height: 51.h,
              child: DropdownButton(
                dropdownColor: Colors.white,
                items: List.generate(5, (index) {
                  return DropdownMenuItem(
                    value: index,
                    child: Text(
                      S.of(context).Residential_apartment_house,
                      style: TextStyle(
                        fontSize: 13.sp,
                      ),
                    ),
                  );
                }),
                onChanged: (value) {},
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Consumer<FilterProvider>(
              builder: (context, provider, child) {
                FilterProvider filterProvider = Provider.of(context, listen: false);
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      S.of(context).The_number_of_rooms,
                      style: TextStyle(
                        fontSize: 15.sp,
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          clipBehavior: Clip.antiAlias,
                          height: 35.h,
                          decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.black87),
                          child: MaterialButton(
                            onPressed: () {
                              filterProvider.changeRoomNumber(isAdd: true);
                            },
                            padding: EdgeInsets.zero,
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          provider.roomNumber.toString(),
                          style: const TextStyle(fontSize: 24),
                        ),
                        Container(
                          clipBehavior: Clip.antiAlias,
                          height: 35.h,
                          decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.black87),
                          child: MaterialButton(
                            onPressed: () {
                              filterProvider.changeRoomNumber(isAdd: false);
                            },
                            padding: EdgeInsets.zero,
                            child: Container(
                              alignment: Alignment.center,
                              child: SvgPicture.asset(
                                Assets.victorMinimamIcon,
                                height: 3.h,
                                width: 5.w,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    const Divider(
                      color: AppColor.grayColor,
                    ),
                    Text(
                      S.of(context).Number_of_bathrooms,
                      style: TextStyle(
                        fontSize: 15.sp,
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          clipBehavior: Clip.antiAlias,
                          height: 35.h,
                          decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.black87),
                          child: MaterialButton(
                            onPressed: () {
                              filterProvider.changeBathRoomNumber(isAdd: true);
                            },
                            padding: EdgeInsets.zero,
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          provider.bathroomNumber.toString(),
                          style: const TextStyle(fontSize: 24),
                        ),
                        Container(
                          clipBehavior: Clip.antiAlias,
                          height: 35.h,
                          decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.black87),
                          child: MaterialButton(
                            onPressed: () {
                              filterProvider.changeBathRoomNumber(isAdd: false);
                            },
                            padding: EdgeInsets.zero,
                            child: Container(
                              alignment: Alignment.center,
                              child: SvgPicture.asset(
                                Assets.victorMinimamIcon,
                                height: 3.h,
                                width: 5.w,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              S.of(context).Average_price,
              style: TextStyle(fontSize: 16.sp),
            ),
            const RangeSliderWidget(),
            SizedBox(height: 10.h,),
            Text(
              S.of(context).District_neighborhood,
              style: TextStyle(fontSize: 16.sp),
            ),
            SizedBox(
              height: 51.h,
              child: DropdownButton(
                dropdownColor: Colors.white,
                items: List.generate(5, (index) {
                  return DropdownMenuItem(
                    value: index,
                    child: Text(
                      S.of(context).Residential_apartment_house,
                      style: TextStyle(
                        fontSize: 13.sp,
                      ),
                    ),
                  );
                }),
                onChanged: (value) {},
              ),
            ),

          ],
        ),
      ),
    );
  }
}
