

import 'package:flutter/cupertino.dart';

class MainModel extends ChangeNotifier {
  String text1 = "shishishi";

  void changeText(){
    text1 = "shick";
    notifyListeners();
  }
}