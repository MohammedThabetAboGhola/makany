

part of'00_main_app_button.dart';


class NavigationBarItem  {
  final String svgAssetSelect;
  final String svgAssetNotSelect;
  final String label;

  const NavigationBarItem({
    required this.svgAssetSelect,
    required this.svgAssetNotSelect,
    required this.label,
  });

}

class MyCustomBottomNavigationBar extends StatefulWidget {
  final int currentIndex;
  final List<NavigationBarItem> items;
  final Function(int index) onTabTapped;
  final Color backgroundColor;
  final Color selectedItemColor;
  final Color unselectedItemColor;
  final double elevation;
  final bool enableLabelAnimation;

  const MyCustomBottomNavigationBar({
    Key? key,
    required this.currentIndex,
    required this.items,
    required this.onTabTapped,
    this.backgroundColor = Colors.white,
    this.selectedItemColor = Colors.blue,
    this.unselectedItemColor = Colors.grey,
    this.elevation = 8.0,
    this.enableLabelAnimation = false,
  }) : super(key: key);

  @override
  State<MyCustomBottomNavigationBar> createState() =>
      _MyCustomBottomNavigationBarState();
}

class _MyCustomBottomNavigationBarState
    extends State<MyCustomBottomNavigationBar> {
  int _lastTappedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: widget.elevation,
      color: widget.backgroundColor,
      child: SizedBox(
        height: 56.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(widget.items.length, (index) {
            return SizedBox(
              width: (MediaQuery.of(context).size.width)/widget.items.length,
              child: MaterialButton(
                hoverColor: Colors.transparent,
                colorBrightness: Brightness.light,
                focusColor: Colors.transparent,
                disabledColor: Colors.transparent,
                splashColor: Colors.transparent,
                elevation: 0.0,
                highlightColor: Colors.transparent,
                onPressed: () {
                  setState(() {
                    _lastTappedIndex = widget.currentIndex;
                    widget.onTabTapped(index);
                  });
                },
                padding: EdgeInsets.zero,
                child: SizedBox(
                  height: 56.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AnimatedSwitcher(
                        duration: const Duration(milliseconds: 200),
                        child: SvgPicture.asset(
                          widget.currentIndex == index
                              ? widget.items[index].svgAssetSelect
                              : widget.items[index].svgAssetNotSelect,
                          key: ValueKey<int>(widget.currentIndex),
                          width: 24.w,
                          height: 24.h,
                          colorFilter: ColorFilter.mode(
                            widget.currentIndex == index
                                ? widget.selectedItemColor
                                : widget.unselectedItemColor,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                      SizedBox(height: 4.h),
                      widget.enableLabelAnimation
                          ? _buildAnimatedLabel(index)
                          : _buildStaticLabel(index),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  Widget _buildAnimatedLabel(int index) {
    return AnimatedDefaultTextStyle(
      duration: const Duration(milliseconds: 200),
      style: TextStyle(
        fontSize: widget.currentIndex == index ? 12.sp : 10.sp,
        color: widget.currentIndex == index
            ? widget.selectedItemColor
            : widget.unselectedItemColor,
        fontWeight: FontWeight.w500,
      ),
      child: Text(widget.items[index].label),
    );
  }

  Widget _buildStaticLabel(int index) {
    return Text(
      widget.items[index].label,
      style: TextStyle(
        fontSize: 10.sp,
        color: widget.currentIndex == index
            ? widget.selectedItemColor
            : widget.unselectedItemColor,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
