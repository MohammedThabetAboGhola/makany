import 'package:flutter/material.dart';

class MyRealEstateProvider extends ChangeNotifier {
  int pageCurrentIndex = 0;
  late PageController myRealEstateController;

  MyRealEstateProvider() {
    myRealEstateController = PageController();
  }

  Future<void> changePageIndex({required int index}) async {
    pageCurrentIndex = index;
    notifyListeners();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    myRealEstateController.dispose();
    super.dispose();
  }
}
