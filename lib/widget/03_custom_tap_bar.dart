part of '00_main_app_button.dart';

class CustomTabBar extends StatefulWidget {
  final List<Widget> children;
  final int initialIndex;
  final double height;
  final Color backgroundColor;
  final Color indicatorColor;
  final Color selectedTextColor;
  final Color unselectedTextColor;
  final ValueChanged<int> onIndexChanged;
  final double crossSpace;
  final double mainSpace;

  const CustomTabBar({
    Key? key,
    required this.children,
    this.initialIndex = 0,
    this.height = 50.0,
    this.backgroundColor = Colors.white,
    this.indicatorColor = Colors.blue,
    this.selectedTextColor = Colors.black,
    this.unselectedTextColor = Colors.grey,
    required this.onIndexChanged,
    this.crossSpace = 5,
    this.mainSpace = 5,
  }) : super(key: key);

  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}





class _CustomTabBarState extends State<CustomTabBar> {
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      decoration: BoxDecoration(
        color: widget.backgroundColor,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: widget.children.asMap().entries.map((entry) {
            final index = entry.key;
            final child = entry.value;

            return GestureDetector(
              onTap: () {
                setState(() {
                  _currentIndex = index;
                });

                widget.onIndexChanged(index);
              },
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(
                  horizontal: widget.mainSpace,
                  vertical: widget.crossSpace,
                ),
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: _currentIndex == index ? widget.indicatorColor : Colors.transparent,
                      width: 2.0,
                    ),
                  ),
                ),
                child: DefaultTextStyle(
                  style: TextStyle(
                    fontSize: 16.0,
                    color: _currentIndex == index ? widget.selectedTextColor : widget.unselectedTextColor,
                  ),
                  child: child,
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}