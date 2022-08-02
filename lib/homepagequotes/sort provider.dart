import 'package:flutter/material.dart';
import 'package:akwal_w7ikam_lkotab/allquotes/allquotes page.dart';

class SortProvider extends ChangeNotifier {
  bool isnamed = true ;

  bool opendrawer = true ;
  FSBStatus drawerStatus;


  get showname => isnamed ;
  get opendrawerget => opendrawer;
  Swapsort(){
    this.isnamed =! this.isnamed ;
    notifyListeners();

  }

  OpenDrawer([type]){
    this.opendrawer = !this.opendrawer;
    notifyListeners();
  }


  Refresh(){
    notifyListeners() ;
  }

}