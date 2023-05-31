part of'00_main_app_button.dart';

class DescriptionRowDetails extends StatelessWidget {
  final String iconPath;
  final String text;
  final double quantity;
  final bool isInt;
  final double iconSize;

  const DescriptionRowDetails({
    super.key,
    required this.iconPath,
    required this.text,
    required this.quantity,
    this.isInt = true,
    this.iconSize = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width - 60) / 2,
      child: Row(
        children: [
          SvgPicture.asset(
            iconPath,
            height: iconSize.h,
          ),
          SizedBox(
            width: 5.w,
          ),
          Text(
            "$text: ${isInt ? quantity.floor() : quantity}",
            style: TextStyle(fontSize: 10.h),
          )
        ],
      ),
    );
  }
}