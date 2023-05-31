import 'package:flutter/material.dart';

class FilterProvider extends ChangeNotifier {
  int roomNumber = 3;
  int bathroomNumber = 2;

  Future<void> changeRoomNumber({required bool isAdd}) async {
    if (roomNumber >= 1) {
      if (isAdd) {
        roomNumber++;
      } else {
        roomNumber > 1 ? roomNumber-- : null;
      }
      notifyListeners();
    }
  }

  Future<void> changeBathRoomNumber({required bool isAdd}) async {
    if (bathroomNumber >= 1) {
      if (isAdd) {
        bathroomNumber++;
      } else {
        bathroomNumber > 1 ? bathroomNumber-- : null;
      }
      notifyListeners();
    }
  }
}
