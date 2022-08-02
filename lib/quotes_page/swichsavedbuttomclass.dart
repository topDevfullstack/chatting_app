import 'package:flutter/cupertino.dart';

class Saved extends ChangeNotifier{

  var issaved = false  ;
  swichissaved(){
    issaved = ! issaved ;
  }
}