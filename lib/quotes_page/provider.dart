import 'package:flutter/cupertino.dart';

class refresh extends ChangeNotifier{

  refress(){
    notifyListeners();
  }
  bool isred = false;
  swapisred(){
    isred = !isred;
    notifyListeners();
  }



}