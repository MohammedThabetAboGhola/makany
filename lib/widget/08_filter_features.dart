part of '00_main_app_button.dart';

class FilterFeatures extends StatelessWidget {
  final bool isSelect;
  final String text;

  const FilterFeatures({
    super.key,
    required this.isSelect,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        height: 60,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
        color: isSelect ? AppColor.primary : null,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 12.sp,
                color: isSelect ? AppColor.background : Colors.red,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            CircleAvatar(
              backgroundColor: AppColor.background,
              child: Icon(
                isSelect ? Icons.done : Icons.close,
                color: isSelect ? AppColor.primary : Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
