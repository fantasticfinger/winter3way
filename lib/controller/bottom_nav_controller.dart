import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../component/message_popup.dart';
import '../page/upload.dart';

enum PageName { HOME, SAERCH, UPLOAD, ACTIVITY, MYPAGE }

class BottomNavController extends GetxController {
  RxInt pageIndex = 0.obs;
  List<int> bottomHistory = [0];

  void changeBottomNav(int value, {bool hasGesture = true}) {
    var page = PageName.values[value];

    switch (page) {
      case PageName.UPLOAD:
        Get.to(() => const Upload());
        break;
      case PageName.HOME:
      case PageName.MYPAGE:
        _changePage(value, hasGesture: hasGesture);
        break;
    }
  }

  void _changePage(int value, {bool hasGesture = true}) {
    pageIndex(value);
    if (!hasGesture) {
      return;
    }
    if (bottomHistory.last != value) {
      bottomHistory.add(value);
      print(bottomHistory);
    }
  }

  Future<bool> willPopAction() async {
    if (bottomHistory.length == 1) {
      showDialog(
          context: Get.context!,
          builder: (context) => MessagePopup(
                okCallback: () {
                  exit(0);
                },
                cancelCallback: Get.back,
                message: '종료하시겠습니까?',
                title: '시스템',
              ));
      return true;
    } else {
      print('go to before page!');
      bottomHistory.removeLast();
      var index = bottomHistory.last;
      changeBottomNav(index, hasGesture: false);
      print(bottomHistory);
      return false;
    }
  }
}
