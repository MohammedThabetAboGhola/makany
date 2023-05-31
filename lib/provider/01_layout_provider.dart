import 'package:flutter/material.dart';

class LayoutProvider extends ChangeNotifier {
  int pageCurrentIndex = 0;

  late PageController layoutPageController;

  LayoutProvider() {
    layoutPageController = PageController();
  }

  Future<void> changePage({required int pageIndex}) async {
    pageCurrentIndex = pageIndex;
    notifyListeners();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    layoutPageController.dispose();
    super.dispose();
  }
}
