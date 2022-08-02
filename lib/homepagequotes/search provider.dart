import 'package:akwal_w7ikam_lkotab/database/class.dart';
import 'package:akwal_w7ikam_lkotab/database/functions.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home class.dart';
class SearchProvider extends ChangeNotifier {
  bool isnamedchoosed = false;
  TextEditingController wlo = TextEditingController();
  var choosedlist = [];
  bool isopenned = true;
  var grid = false;
  swapgrid(){
    if(isnamedchoosed){
      grid = !grid ;
    }
    if(!isnamedchoosed){
      grid = !grid;
    }
  }

   get mm  => isnamedchoosed ;

  var a7o = true;

  var a7a = true;


  Swipea7a() {
    a7a = !a7a;
    notifyListeners();
  }

  Swipea7o() {
    a7o = !a7o;
    notifyListeners();
  }

  SwipeOpen() {
    isopenned = !isopenned;
    notifyListeners();
  }

  Swipeisnamedchoosed() {
      isnamedchoosed = !isnamedchoosed;

    notifyListeners();
  }

  get choosedlistget => choosedlist;
  var timeee = tinme();
  bool iscreated = false ;
  SharedPreferences prefs;
  SearchProvider() {
    isparts = isparts1;
    isnamed = isnamed1;
    create();
  }

  create()async{
    prefs = await SharedPreferences.getInstance() ;
 var   today = new DateTime.now();
 var a7a =   prefs.getBool("creation") ?? false;
 if(a7a == false){
   var inde = Time({"time" : today.day});
   await timeee.createCourse(inde);
   var indea = Indexx({"indexx" : 0});
   await timeee.creataaa(indea);
   iscreated = true ;
   prefs.setBool("creation", iscreated);

 }

  }

  List isparts = [];
  List isparts1 = [
    //7kmaaaaaa
    HomeSectionsClass(
         text: "الوقت", tag: "wal1", ),
    HomeSectionsClass(
        text: "الحياة",
        tag: "wal2",
        ),
    HomeSectionsClass(
         text: "الناس", tag: "wal5", ),
    HomeSectionsClass(
         text: "الحب", tag: "wal6", ),
    HomeSectionsClass(
         text: "العلم", tag: "wal8", ),
    HomeSectionsClass(
         text: "العمل", tag: "wal9", ),
    HomeSectionsClass(
        text: "الدنيا",
        tag: "wal10",
        ),
    HomeSectionsClass(
        text: "القلب",
        tag: "wal11",
        ),
    HomeSectionsClass(
        text: "الموت",
        tag: "wal12",
        ),
    HomeSectionsClass(
        text: "المال",
        tag: "wal14",
        ),
    HomeSectionsClass(
        text: "الحرب",
        tag: "wal15",
        ),
    HomeSectionsClass(
        text: "النجاح",
        tag: "wal16",
        ),
    HomeSectionsClass(
        text: "العقل",
        tag: "wal17",
        ),
    HomeSectionsClass(
        text: "الصديق",
        tag: "wal18",
        ),
    HomeSectionsClass(
        text: "التسامح",
        tag: "wal19",
        ),
    HomeSectionsClass(
        text: "الوطن",
        tag: "wal121",
        ),
    HomeSectionsClass(
        text: "السياسة",
        tag: "wal22",
        ),
    HomeSectionsClass(
        text: "الجهل",
        tag: "wal23",
        ),
    HomeSectionsClass(
        text: "الحقيقة",
        tag: "wal124",
        ),
    HomeSectionsClass(
        text: "العمر",
        tag: "wal25",
        ),
    HomeSectionsClass(
        text: "الكذب",
        tag: "wal26",
        ),
    HomeSectionsClass(
        text: "القوة",
        tag: "wal27",
        ),
    HomeSectionsClass(
        text: "السعادة",
        tag: "wal28",
        ),
    HomeSectionsClass(
        text: "الصبر",
        tag: "wal29",
        ),
    HomeSectionsClass(
        text: "الحزن",
        tag: "wal30",
        ),
    HomeSectionsClass(
        text: "الفقر",
        tag: "wal31",
        ),
    HomeSectionsClass(
        text: "الأمل",
        tag: "wal32",
        ),
    HomeSectionsClass(
         text: "الأم", tag: "wal33", ),
    HomeSectionsClass(
        text: "الغباء",
        tag: "wal34",
        ),
    HomeSectionsClass(
        text: "الصمت",
        tag: "wal35",
        ),
    HomeSectionsClass(
        text: "الثقة",
        tag: "wal38",
        ),
    HomeSectionsClass(
        text: "الحرية",
        tag: "wal39",
        ),
    HomeSectionsClass(
        text: "الماضي",
        tag: "wal44",
        ),
    HomeSectionsClass(
        text: "الفشل",
        tag: "wal43",
        ),
  ];

  List isnamed = [];

  List isnamed1 = [
    HomeSectionsClass(
        text: "مصطفى محمود",
        tag: "walll",
        ),
    HomeSectionsClass(
        text: "أفلاطون",
        tag: "walll1",
        ),
    HomeSectionsClass(
        text: "إبراهيم الفقي",
        tag: "walll2",
        ),
    HomeSectionsClass(
        text: "محمود درويش",
        tag: "walll3",
        ),
    HomeSectionsClass(
        text: "وليم شكسبير",
        tag: "walll4",
        ),
    HomeSectionsClass(
        text: "باولو كويلو",
        tag: "walll5",
        ),
    HomeSectionsClass(
        text: "مصطفى الرافعي",
        tag: "walll6",
        ),
    HomeSectionsClass(
        text: "احلام مستغانمي",
        tag: "walll7",
        ),
    HomeSectionsClass(
        text: "نزار قباني",
        tag: "walll8",
        ),
    HomeSectionsClass(
        text: "نيلسون مانديلا",
        tag: "walll9",
        ),
   /* HomeSectionsClass(
        text: "فريدريك نيتشة",
        tag: "walll10",
        ),*/
    HomeSectionsClass(
        text: "مارك توبن",
        tag: "walll11",
        ),
    HomeSectionsClass(
      text: "نابليون بونابرت",
      tag: "walll12",
    ),
    HomeSectionsClass(
      text: "مصطفى لطفي المنفلوطي",
      tag: "walll13",
    ),
    HomeSectionsClass(
      text: "ألبرت أينشتاين",
      tag: "walll113",
    ),
    HomeSectionsClass(
      text: "نجيب محفوظ",
      tag: "walll14",
    ),
    HomeSectionsClass(
      text: "أحمد خالد توفيق",
      tag: "walll15",
    ),
    HomeSectionsClass(
      text: "غسان كنفاني",
      tag: "walll16",
    ),
  ];

  swapsort() {
    isnamedchoosed = !isnamedchoosed;
    notifyListeners();
  }

  search(textt) {
    if (isnamedchoosed == true) {
      isnamed = isnamed1;
      if (textt.isNotEmpty) {
        List filter = List();
        var wal = isnamed.where((element) =>
            element.text.toLowerCase().contains(textt.toLowerCase()));
        wal.forEach((element) {
          filter.add(element);
        });
        isnamed = [];
        isnamed.addAll(filter);
      }
      else {
        Refresh();
      }
    }
    if (isnamedchoosed == false) {
      isparts = isparts1;
      if (textt.isNotEmpty) {
        List filter = List();
        var wal = isparts.where((element) =>
            element.text.toLowerCase().contains(textt.toLowerCase()));
        wal.forEach((element) {
          filter.add(element);
        });
        isparts = [];
        isparts.addAll(filter);
      }
      else {
        Refresh();
      }
    }
    notifyListeners();
  }

  Refresh() {
    isnamed = isnamed1;
    isparts = isparts1;
    notifyListeners();
  }

  List wall;
  var forr ;
  List finish = [];
  var wlol = Functions();

}

class Post {
  int id;
  int userId;
  String title;
  String body;
  Post({this.id, this.userId, this.title, this.body});
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
        id: json['id'],
        userId: json['userId'],
        title: json['title'],
        body: json['body']);
  }

}
