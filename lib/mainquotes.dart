import 'dart:math';
import 'package:akwal_w7ikam_lkotab/parts/l2m.dart';
import 'package:akwal_w7ikam_lkotab/writers/8assan%20knfani.dart';
import 'package:akwal_w7ikam_lkotab/writers/a7lammost8anmi.dart';
import 'package:akwal_w7ikam_lkotab/writers/aflaton.dart';
import 'package:akwal_w7ikam_lkotab/writers/ahmedkhalidtawfik.dart';
import 'package:akwal_w7ikam_lkotab/writers/alberteinstein.dart';
import 'package:akwal_w7ikam_lkotab/writers/fridriknicha.dart';
import 'package:akwal_w7ikam_lkotab/writers/ibrahimlfiki.dart';
import 'package:akwal_w7ikam_lkotab/writers/marktoben.dart';
import 'package:akwal_w7ikam_lkotab/writers/mostafalotfilmnfloti.dart';
import 'package:akwal_w7ikam_lkotab/writers/mostafalrafei.dart';
import 'package:akwal_w7ikam_lkotab/writers/mostafamahmoud.dart';
import 'package:akwal_w7ikam_lkotab/writers/najibma7fuz.dart';
import 'package:akwal_w7ikam_lkotab/writers/naplyonponapart.dart';
import 'package:akwal_w7ikam_lkotab/writers/nilsonmandila.dart';
import 'package:akwal_w7ikam_lkotab/writers/nizarkbani.dart';
import 'package:akwal_w7ikam_lkotab/writers/pawlokwilo.dart';
import 'package:akwal_w7ikam_lkotab/writers/wliam%20sheksipir.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'writers/mahmouddarwish.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class num {
  int number  ;
  num({this.number}) ;
}
class Quotesclass {

  String title ;
  String writer ;
  String text  ;
  String secondtitle ;
  String thirdtitle ;
  int id;
  bool isclicked ;
  Color gotocolor = Color(0xfff0d5a8);
  String fourthtitle , fifthtitle ;
  var color = Color(0xfff0d5a8);
  Quotesclass({this.text , this.writer , this.title , this.secondtitle , this.thirdtitle , this.fourthtitle , this.fifthtitle});

}

class MainLists extends ChangeNotifier {
  var random;

  randomm() {
    return Random().nextInt(5053);
  }

  MainLists() {
    Reset();
    finihsh();
    shuffle();
    t3rib();
    getfont();
    getz8rafa();
  }

  resetclick() {
    finalquote.forEach((element) {
      element.isclicked = false;
    });
    notifyListeners();
  }

  List mainlist = [
  ];

  int num1 = 0;

  int num2;

  List waktlist = [];
  List naplyonponapart = [];
  List hyatlis = [];
  List lnaslist = [];
  List l7oblist = [];
  List md7ekliat = [];
  List l3lmlist = [];
  List jlalldinlromi = [];
  List l3mllist = [];
  List ldnyalist = [];
  List ghassankanafani = [];

  List lklblist = [];
  List lmawtlist = <Quotesclass>[];
  List lmallist = [];
  List l7arblist = [];
  List lnja7list = [];
  List l3kllist = [];
  List l3mrlist = [];
  List lsdiklist = [];
  List l7akika = [];

  List lsamt = [];

  List ltsamo7list = [];
  List l5yanalist = [];
  List lwtanlist = [];
  List lsyasalist = [];
  List ljahllist = [];
  List l7aklist = [];
  List lkzeblist = [];
  List lkwalist = [];
  List ls3adalist = [];
  List lsberlist = [];
  List l7znlist = [];
  List lfkrlist = [];
  List ebnisna = [];
  List johmlok = [];
  List ahmadkhalidtawfik = [];
  List karljasperz = [];
  List l2mllist = [];
  List l2mlist = [];
  List l8ba2list = [];
  List lsamtlist = [];
  List l2blist = [];
  List l8rorlist = [];
  List lsikalist = [];
  List l7ryalist = [];
  List lflsfalist = [];
  List lfshallist = [];
  List lmadilist = [];
  List pawlokwilo = [];
  List nilsonmandila = [];


  List mostafamahmoud = [];

  List konfoshbos = [];

  List arestotays = [];

  List renehdikart = [];

  List aflaton = [];

  List sokrat = [];

  List ibrahimlfiki = [];

  List mostafalsiba3i = [];

  List sherlokholmz = [];

  List anismansour = [];

  List mahmouddarwis = [];

  List williamshikspir = [];

  List adolfhetler = [];

  List jbran5aliljbran = [];

  List mostafalotfilmnfloti = [];

  List alberteinstein = [];

  List l7sanlbsri = [];

  List hilinkilr = [];

  List najibma7foz = [];

  List mi5a2ilna3ima = [];

  List mostafalrafei = [];

  List a7lammost8anmi = [];

  List nizarkbarni = [];

  List fridriknicha = [];

  List marktoben = [];

  t3rib() {
    mainlist.forEach((elementt) {
      if (elementt.text.contains("ماضي")
          || elementt.text.contains("ذكريات")
          || elementt.text.contains("تذكر")
          || elementt.text.contains("مضى")
          || elementt.text.contains("نسيان")
          || elementt.text.contains("نسى")
          || elementt.text.contains("نسي")) {
        lmadilist.add(elementt);
        if (elementt.title == null) {
          elementt.title = "الماضي";
        } else if (elementt.secondtitle == null) {
          elementt.secondtitle = "الماضي";
        } else if (elementt.thirdtitle == null) {
          elementt.thirdtitle = "الماضي";
        } else if (elementt.fourthtitle == null) {
          elementt.fourthtitle = "الماضي";
        }
      }
      if (elementt.text.contains("فاشل")
          || elementt.text.contains("فشل")
          || elementt.text.contains("خسر")
          || elementt.text.contains("هزم")
          || elementt.text.contains("مهزوم")
          || elementt.text.contains("خاسر")) {
        lfshallist.add(elementt);
        if (elementt.title == null) {
          elementt.title = "الفشل";
        } else if (elementt.secondtitle == null) {
          elementt.secondtitle = "الفشل";
        } else if (elementt.thirdtitle == null) {
          elementt.thirdtitle = "الفشل";
        } else if (elementt.fourthtitle == null) {
          elementt.fourthtitle = "الفشل";
        }
      }
      if (elementt.text.contains("فلسفة")) {
        lflsfalist.add(elementt);
        if (elementt.title == null) {
          elementt.title = "الفلسفة";
        } else if (elementt.secondtitle == null) {
          elementt.secondtitle = "الفلسفة";
        } else if (elementt.thirdtitle == null) {
          elementt.thirdtitle = "الفلسفة";
        } else if (elementt.fourthtitle == null) {
          elementt.fourthtitle = "الفلسفة";
        }
      }
      if (elementt.text.contains("سجن")
          || elementt.text.contains("حرية")
          || elementt.text.contains("سجين")
          || elementt.text.contains(" حر ")
          || elementt.text.contains("حريت")
          || elementt.text.contains("أسير")
      ) {
        l7ryalist.add(elementt);
        if (elementt.title == null) {
          elementt.title = "الحرية";
        } else if (elementt.secondtitle == null) {
          elementt.secondtitle = "الحرية";
        } else if (elementt.thirdtitle == null) {
          elementt.thirdtitle = "الحرية";
        } else if (elementt.fourthtitle == null) {
          elementt.fourthtitle = "الحرية";
        }
      }
      if (elementt.text.contains("ثقة")
          || elementt.text.contains("واثق")
          || elementt.text.contains("ثق ")
      ) {
        lsikalist.add(elementt);
        if (elementt.title == null) {
          elementt.title = "الثقة";
        } else if (elementt.secondtitle == null) {
          elementt.secondtitle = "الثقة";
        } else if (elementt.thirdtitle == null) {
          elementt.thirdtitle = "الثقة";
        } else if (elementt.fourthtitle == null) {
          elementt.fourthtitle = "الثقة";
        }
      }
      if (elementt.text.contains("غرك")
          || elementt.text.contains("غرور")) {
        l8rorlist.add(elementt);
        if (elementt.title == null) {
          elementt.title = "الغرور";
        } else if (elementt.secondtitle == null) {
          elementt.secondtitle = "الغرور";
        } else if (elementt.thirdtitle == null) {
          elementt.thirdtitle = "الغرور";
        } else if (elementt.fourthtitle == null) {
          elementt.fourthtitle = "الغرور";
        }
      }

      if (elementt.text.contains("صامت")
          || elementt.text.contains("صمت")) {
        lsamtlist.add(elementt);
        if (elementt.title == null) {
          elementt.title = "الصمت";
        } else if (elementt.secondtitle == null) {
          elementt.secondtitle = "الصمت";
        } else if (elementt.thirdtitle == null) {
          elementt.thirdtitle = "الصمت";
        } else if (elementt.fourthtitle == null) {
          elementt.fourthtitle = "الصمت";
        }
      }
      if (elementt.text.contains("غبي")
          || elementt.text.contains("غباء")
          || elementt.text.contains("غبى")
      ) {
        l8ba2list.add(elementt);
        if (elementt.title == null) {
          elementt.title = "الغباء";
        } else if (elementt.secondtitle == null) {
          elementt.secondtitle = "الغباء";
        } else if (elementt.thirdtitle == null) {
          elementt.thirdtitle = "الغباء";
        } else if (elementt.fourthtitle == null) {
          elementt.fourthtitle = "الغباء";
        }
      }
      if (elementt.text.contains("لأم ")
          || elementt.text.contains(" لأم")
          || elementt.text.contains(" أمي")
          || elementt.text.contains("أمي ")) {
        l2mlist.add(elementt);
        if (elementt.title == null) {
          elementt.title = "الأم";
        } else if (elementt.secondtitle == null) {
          elementt.secondtitle = "الأم";
        } else if (elementt.thirdtitle == null) {
          elementt.thirdtitle = "الأم";
        } else if (elementt.fourthtitle == null) {
          elementt.fourthtitle = "الأم";
        }
      }
      if (elementt.text.contains("أمل")
          || elementt.text.contains("آمال")
          || elementt.text.contains("آمل")
      ) {
        l2mllist.add(elementt);
        if (elementt.title == null) {
          elementt.title = "الأمل";
        } else if (elementt.secondtitle == null) {
          elementt.secondtitle = "الأمل";
        } else if (elementt.thirdtitle == null) {
          elementt.thirdtitle = "الأمل";
        } else if (elementt.fourthtitle == null) {
          elementt.fourthtitle = "الأمل";
        }
      }
      if (elementt.text.contains("فقر")
          || elementt.text.contains("فقير")
      ) {
        lfkrlist.add(elementt);
        if (elementt.title == null) {
          elementt.title = "الفقر";
        } else if (elementt.secondtitle == null) {
          elementt.secondtitle = "الفقر";
        } else if (elementt.thirdtitle == null) {
          elementt.thirdtitle = "الفقر";
        } else if (elementt.fourthtitle == null) {
          elementt.fourthtitle = "الفقر";
        }
      }
      if (elementt.text.contains("حزين")
          || elementt.text.contains("الحزن")
          || elementt.text.contains("بكاء")
          || elementt.text.contains("يبكي")
          || elementt.text.contains("بكاء")
          || elementt.text.contains("وحدة")
          || elementt.text.contains("تعيس")
          || elementt.text.contains("تعاسة")
          || elementt.text.contains("فراق")) {
        l7znlist.add(elementt);
        if (elementt.title == null) {
          elementt.title = "الحزن";
        } else if (elementt.secondtitle == null) {
          elementt.secondtitle = "الحزن";
        } else if (elementt.thirdtitle == null) {
          elementt.thirdtitle = "الحزن";
        } else if (elementt.fourthtitle == null) {
          elementt.fourthtitle = "الحزن";
        }
      }
      if (elementt.text.contains("صبور")
          || elementt.text.contains("صبر")) {
        lsberlist.add(elementt);
        if (elementt.title == null) {
          elementt.title = "الصبر";
        } else if (elementt.secondtitle == null) {
          elementt.secondtitle = "الصبر";
        } else if (elementt.thirdtitle == null) {
          elementt.thirdtitle = "الصبر";
        } else if (elementt.fourthtitle == null) {
          elementt.fourthtitle = "الصبر";
        }
      }

      if (elementt.text.contains("سعيد")
          || elementt.text.contains("سعادة")
          || elementt.text.contains("سعد")
      ) {
        ls3adalist.add(elementt);
        if (elementt.title == null) {
          elementt.title = "السعادة";
        } else if (elementt.secondtitle == null) {
          elementt.secondtitle = "السعادة";
        } else if (elementt.thirdtitle == null) {
          elementt.thirdtitle = "السعادة";
        } else if (elementt.fourthtitle == null) {
          elementt.fourthtitle = "السعادة";
        }
      }
      if (elementt.text.contains("قوة")
          || elementt.text.contains("قوياء")) {
        lkwalist.add(elementt);
        if (elementt.title == null) {
          elementt.title = "القوة";
        } else if (elementt.secondtitle == null) {
          elementt.secondtitle = "القوة";
        } else if (elementt.thirdtitle == null) {
          elementt.thirdtitle = "القوة";
        } else if (elementt.fourthtitle == null) {
          elementt.fourthtitle = "القوة";
        }
      }
      if (elementt.text.contains("كذاب") ||
          elementt.text.contains("كذب")) {
        lkzeblist.add(elementt);
        if (elementt.title == null) {
          elementt.title = "الكذب";
        } else if (elementt.secondtitle == null) {
          elementt.secondtitle = "الكذب";
        } else if (elementt.thirdtitle == null) {
          elementt.thirdtitle = "الكذب";
        } else if (elementt.fourthtitle == null) {
          elementt.fourthtitle = "الكذب";
        }
      }
      if (elementt.text.contains("عمر")
          || elementt.text.contains("اعمار")
          || elementt.text.contains("أعمار")
      ) {
        l3mrlist.add(elementt);
        if (elementt.title == null) {
          elementt.title = "العمر";
        } else if (elementt.secondtitle == null) {
          elementt.secondtitle = "العمر";
        } else if (elementt.thirdtitle == null) {
          elementt.thirdtitle = "العمر";
        } else if (elementt.fourthtitle == null) {
          elementt.fourthtitle = "العمر";
        }
      }
      if (elementt.text.contains("وقت") || elementt.text.contains("اوقات") ||
          elementt.text.contains("سنة")
          || elementt.text.contains("سنوات")
          || elementt.text.contains("ثوان")
          || elementt.text.contains("ثانية")) {
        waktlist.add(elementt);
        if (elementt.title == null) {
          elementt.title = "الوقت";
        } else if (elementt.secondtitle == null) {
          elementt.secondtitle = "الوقت";
        } else if (elementt.thirdtitle == null) {
          elementt.thirdtitle = "الوقت";
        } else if (elementt.fourthtitle == null) {
          elementt.fourthtitle = "الوقت";
        }
      }
      if (elementt.text.contains("حياة")
          || elementt.text.contains("حيات")) {
        hyatlis.add(elementt);
        if (elementt.title == null) {
          elementt.title = "الحياة";
        } else if (elementt.secondtitle == null) {
          elementt.secondtitle = "الحياة";
        } else if (elementt.thirdtitle == null) {
          elementt.thirdtitle = "الحياة";
        } else if (elementt.fourthtitle == null) {
          elementt.fourthtitle = "الحياة";
        }
      }
      if (elementt.text.contains("ناس")
      ) {
        lnaslist.add(elementt);
        if (elementt.title == null) {
          elementt.title = "الناس";
        } else if (elementt.secondtitle == null) {
          elementt.secondtitle = "الناس";
        } else if (elementt.thirdtitle == null) {
          elementt.thirdtitle = "الناس";
        } else if (elementt.fourthtitle == null) {
          elementt.fourthtitle = "الناس";
        }
      }
      if (elementt.text.contains("حب")) {
        l7oblist.add(elementt);
        if (elementt.title == null) {
          elementt.title = "الحب";
        } else if (elementt.secondtitle == null) {
          elementt.secondtitle = "الحب";
        } else if (elementt.thirdtitle == null) {
          elementt.thirdtitle = "الحب";
        } else if (elementt.fourthtitle == null) {
          elementt.fourthtitle = "الحب";
        }
      }
      if (elementt.text.contains("علم") || elementt.text.contains("علوم")) {
        l3lmlist.add(elementt);
        if (elementt.title == null) {
          elementt.title = "العلم";
        } else if (elementt.secondtitle == null) {
          elementt.secondtitle = "العلم";
        } else if (elementt.thirdtitle == null) {
          elementt.thirdtitle = "العلم";
        } else if (elementt.fourthtitle == null) {
          elementt.fourthtitle = "العلم";
        }
      }
      if (elementt.text.contains("عمل")
          || elementt.text.contains("اعمال")
          || elementt.text.contains("أعمال")
      ) {
        l3mllist.add(elementt);
        if (elementt.title == null) {
          elementt.title = "العمل";
        } else if (elementt.secondtitle == null) {
          elementt.secondtitle = "العمل";
        } else if (elementt.thirdtitle == null) {
          elementt.thirdtitle = "العمل";
        } else if (elementt.fourthtitle == null) {
          elementt.fourthtitle = "العمل";
        }
      }
      if (elementt.text.contains("دنيا")) {
        ldnyalist.add(elementt);
        if (elementt.title == null) {
          elementt.title = "الدنيا";
        } else if (elementt.secondtitle == null) {
          elementt.secondtitle = "الدنيا";
        } else if (elementt.thirdtitle == null) {
          elementt.thirdtitle = "الدنيا";
        } else if (elementt.fourthtitle == null) {
          elementt.fourthtitle = "الدنيا";
        }
      }
      if (elementt.text.contains("قلب") || elementt.text.contains("قلوب")) {
        lklblist.add(elementt);
        if (elementt.title == null) {
          elementt.title = "القلب";
        } else if (elementt.secondtitle == null) {
          elementt.secondtitle = "القلب";
        } else if (elementt.thirdtitle == null) {
          elementt.thirdtitle = "القلب";
        } else if (elementt.fourthtitle == null) {
          elementt.fourthtitle = "القلب";
        }
      }
      if (elementt.text.contains("موت") || elementt.text.contains("اموات")
          || elementt.text.contains("كفن")
          || elementt.text.contains("قبر")
          || elementt.text.contains("قبور")) {
        lmawtlist.add(elementt);
        if (elementt.title == null) {
          elementt.title = "الموت";
        } else if (elementt.secondtitle == null) {
          elementt.secondtitle = "الموت";
        } else if (elementt.thirdtitle == null) {
          elementt.thirdtitle = "الموت";
        } else if (elementt.fourthtitle == null) {
          elementt.fourthtitle = "الموت";
        }
      }
      if (elementt.text.contains("مال")
          || elementt.text.contains("اموال")
          || elementt.text.contains("أموال")
          || elementt.text.contains("كنز")) {
        lmallist.add(elementt);
        if (elementt.title == null) {
          elementt.title = "المال";
        } else if (elementt.secondtitle == null) {
          elementt.secondtitle = "المال";
        } else if (elementt.thirdtitle == null) {
          elementt.thirdtitle = "المال";
        } else if (elementt.fourthtitle == null) {
          elementt.fourthtitle = "المال";
        }
      }
      if (elementt.text.contains("حرب") || elementt.text.contains("حروب")) {
        l7arblist.add(elementt);
        if (elementt.title == null) {
          elementt.title = "الحرب";
        } else if (elementt.secondtitle == null) {
          elementt.secondtitle = "الحرب";
        } else if (elementt.thirdtitle == null) {
          elementt.thirdtitle = "الحرب";
        } else if (elementt.fourthtitle == null) {
          elementt.fourthtitle = "الحرب";
        }
      }
      if (elementt.text.contains("نجاح")
          || elementt.text.contains("نجح")
          || elementt.text.contains("فوز")) {
        lnja7list.add(elementt);
        if (elementt.title == null) {
          elementt.title = "النجاح";
        } else if (elementt.secondtitle == null) {
          elementt.secondtitle = "النجاح";
        } else if (elementt.thirdtitle == null) {
          elementt.thirdtitle = "النجاح";
        } else if (elementt.fourthtitle == null) {
          elementt.fourthtitle = "النجاح";
        }
      }
      if (elementt.text.contains("عقل")
          || elementt.text.contains("عقول")) {
        l3kllist.add(elementt);
        if (elementt.title == null) {
          elementt.title = "العقل";
        } else if (elementt.secondtitle == null) {
          elementt.secondtitle = "العقل";
        } else if (elementt.thirdtitle == null) {
          elementt.thirdtitle = "العقل";
        } else if (elementt.fourthtitle == null) {
          elementt.fourthtitle = "العقل";
        }
      }
      if (elementt.text.contains("صديق")
          || elementt.text.contains("اصدقاء")) {
        lsdiklist.add(elementt);
        if (elementt.title == null) {
          elementt.title = "الصديق";
        } else if (elementt.secondtitle == null) {
          elementt.secondtitle = "الصديق";
        } else if (elementt.thirdtitle == null) {
          elementt.thirdtitle = "الصديق";
        } else if (elementt.fourthtitle == null) {
          elementt.fourthtitle = "الصديق";
        }
      }
      if (elementt.text.contains("سامح")
          || elementt.text.contains("عفى")
          || elementt.text.contains("غفر")
          || elementt.text.contains("يعفو")
          || elementt.text.contains("يغفر")) {
        ltsamo7list.add(elementt);
        if (elementt.title == null) {
          elementt.title = "التسامح";
        } else if (elementt.secondtitle == null) {
          elementt.secondtitle = "التسامح";
        } else if (elementt.thirdtitle == null) {
          elementt.thirdtitle = "التسامح";
        } else if (elementt.fourthtitle == null) {
          elementt.fourthtitle = "التسامح";
        }
      }
      if (elementt.text.contains("وطن")
          || elementt.text.contains("وطان")) {
        lwtanlist.add(elementt);
        if (elementt.title == null) {
          elementt.title = "الوطن";
        } else if (elementt.secondtitle == null) {
          elementt.secondtitle = "الوطن";
        } else if (elementt.thirdtitle == null) {
          elementt.thirdtitle = "الوطن";
        } else if (elementt.fourthtitle == null) {
          elementt.fourthtitle = "الوطن";
        }
      }
      if (elementt.text.contains("سياسة")
          || elementt.text.contains("حكومة")
          || elementt.text.contains("شعب")) {
        lsyasalist.add(elementt);
        if (elementt.title == null) {
          elementt.title = "السياسة";
        } else if (elementt.secondtitle == null) {
          elementt.secondtitle = "السياسة";
        } else if (elementt.thirdtitle == null) {
          elementt.thirdtitle = "السياسة";
        } else if (elementt.fourthtitle == null) {
          elementt.fourthtitle = "السياسة";
        }
      }
      if (elementt.text.contains("جهل")
          || elementt.text.contains("تخلف")) {
        ljahllist.add(elementt);
        if (elementt.title == null) {
          elementt.title = "الجهل";
        } else if (elementt.secondtitle == null) {
          elementt.secondtitle = "الجهل";
        } else if (elementt.thirdtitle == null) {
          elementt.thirdtitle = "الجهل";
        } else if (elementt.fourthtitle == null) {
          elementt.fourthtitle = "الجهل";
        }
      }
      if (elementt.text.contains("حقيقة")
          || elementt.text.contains("حقائق")
      ) {
        l7aklist.add(elementt);
        if (elementt.title == null) {
          elementt.title = "الحقيقة";
        } else if (elementt.secondtitle == null) {
          elementt.secondtitle = "الحقيقة";
        } else if (elementt.thirdtitle == null) {
          elementt.thirdtitle = "الحقيقة";
        } else if (elementt.fourthtitle == null) {
          elementt.fourthtitle = "الحقيقة";
        }
      }
      if (elementt.writer.contains("كارل جاسبرز")) {
        mostafamahmoud.add(elementt);
      }
      if (elementt.writer.contains("إبراهيم الفقي")) {
        ibrahimlfiki.add(elementt);
      }
      if (elementt.writer.contains("جون لوك")) {
        johmlok.add(elementt);
      }
      if (elementt.writer.contains("كارل جاسبرز")) {
        karljasperz.add(elementt);
      }
      if (elementt.writer.contains("ابن سينا")) {
        ebnisna.add(elementt);
      }
      if (elementt.writer.contains("ارسطو طايس")) {
        arestotays.add(elementt);
      }
      if (elementt.writer.contains("رينيه ديكارت")) {
        renehdikart.add(elementt);
      }
      if (elementt.writer.contains("أفلاطون")) {
        aflaton.add(elementt);
      }
      if (elementt.writer.contains("سقراط")) {
        sokrat.add(elementt);
      }
      if (elementt.writer.contains("مصطفى السباعي")) {
        mostafalsiba3i.add(elementt);
      }
      if (elementt.writer.contains("جلال الدين الرومي")) {
        jlalldinlromi.add(elementt);
      }
      if (elementt.writer.contains("شيرلوك هولمز")) {
        sherlokholmz.add(elementt);
      }
      if (elementt.writer.contains("انيس منصور")) {
        anismansour.add(elementt);
      }
      if (elementt.writer.contains("محمود درويش")) {
        mahmouddarwis.add(elementt);
      }
      if (elementt.writer.contains("وليم شكسبير")) {
        williamshikspir.add(elementt);
      }
      if (elementt.writer.contains("ادولف هتلر")) {
        adolfhetler.add(elementt);
      }
      if (elementt.writer.contains("جبران خليل جبران")) {
        jbran5aliljbran.add(elementt);
      }
      if (elementt.writer.contains("ألبرت أينشتاين")) {
        alberteinstein.add(elementt);
      }
      if (elementt.writer.contains("الحسن البصري")) {
        l7sanlbsri.add(elementt);
      }
      if (elementt.writer.contains("هيلين كيلر")) {
        hilinkilr.add(elementt);
      }
      if (elementt.writer.contains("نجيب محفوظ")) {
        najibma7foz.add(elementt);
      }
      if (elementt.writer.contains("ميخائيل نعيمة")) {
        mi5a2ilna3ima.add(elementt);
      }
      if (elementt.writer.contains("مصطفى محمود")) {
        mostafamahmoud.add(elementt);
      }
      if (elementt.writer.contains("باولو كويلو")) {
        pawlokwilo.add(elementt);
      }
      if (elementt.writer.contains("مصطفى الرافعي")) {
        mostafalrafei.add(elementt);
      }
      if (elementt.writer.contains("احلام مستغانمي")) {
        a7lammost8anmi.add(elementt);
      }
      if (elementt.writer.contains("نزار قباني")) {
        nizarkbarni.add(elementt);
      }
      if (elementt.writer.contains("نيلسون مانديلا")) {
        nilsonmandila.add(elementt);
      }
      if (elementt.writer.contains("فريدريك نيتشة")) {
        fridriknicha.add(elementt);
      }
      if (elementt.writer.contains("مارك توبن")) {
        marktoben.add(elementt);
      }
      if (elementt.writer.contains("مصطفى لطفي المنفلوطي")) {
        mostafalotfilmnfloti.add(elementt);
      }
      if (elementt.writer.contains("نابليون بونابرت")) {
        naplyonponapart.add(elementt);
      }
      if (elementt.writer.contains("أحمد خالد توفيق")) {
        ahmadkhalidtawfik.add(elementt);
      }
      if (elementt.writer.contains("غسان كنفاني")) {
        ghassankanafani.add(elementt);
      }

      notifyListeners();
    });
  }

  names() {
    return [
      mostafamahmoud.length,
      aflaton.length,
      ibrahimlfiki.length,
      mahmouddarwis.length,
      williamshikspir.length,
      pawlokwilo.length,
      mostafalrafei.length,
      a7lammost8anmi.length,
      nizarkbarni.length,
      nilsonmandila.length,
    /*  fridriknicha.length,*/
      marktoben.length,
      naplyonponapart.length,
      mostafalotfilmnfloti.length,
      alberteinstein.length,
      najibma7foz.length,
      ahmadkhalidtawfik.length,
      ghassankanafani.length,
    ];
  }

  parts() {
    return [
      waktlist.length,
      hyatlis.length,
      lnaslist.length,
      l7oblist.length,
      l3lmlist.length,
      l3mllist.length,
      ldnyalist.length,
      lklblist.length,
      lmawtlist.length,
      lmallist.length,
      l7arblist.length,
      lnja7list.length,
      l3kllist.length,
      lsdiklist.length,
      ltsamo7list.length,
      lwtanlist.length,
      lsyasalist.length,
      ljahllist.length,
      l7aklist.length,
      l3mrlist.length,
      lkzeblist.length,
      lkwalist.length,
      ls3adalist.length,
      lsberlist.length,
      l7znlist.length,
      lfkrlist.length,
      l2mllist.length,
      l2mlist.length,
      l8ba2list.length,
      lsamtlist.length,
      lsikalist.length,
      l7ryalist.length,
      lmadilist.length,
      lfshallist.length,
    ];
  }

  Reset() {
    waktlist = [];
    hyatlis = [];
    lnaslist = [];
    l7oblist = [];
    l3lmlist = [];
    l3mllist = [];
    ldnyalist = [];
    lklblist = [];
    lmawtlist = [];
    lmallist = [];
    l7arblist = [];
    lnja7list = [];
    l3kllist = [];
    lsdiklist = [];
    ltsamo7list = [];
    l5yanalist = [];
    lwtanlist = [];
    lsyasalist = [];
    ljahllist = [];
    l7aklist = [];
    l3mrlist = [];
    lkzeblist = [];
    lkwalist = [];
    ls3adalist = [];
    lsberlist = [];
    l7znlist = [];
    lfkrlist = [];
    l2mllist = [];
    l2mlist = [];
    l8ba2list = [];
    lsamtlist = [];
    l2blist = [];
    lsikalist = [];
    l7ryalist = [];
    lflsfalist = [];
    lmadilist = [];
    lfshallist = [];
    karljasperz = [];
    johmlok = [];
    ebnisna = [];
    mostafamahmoud = [];
    konfoshbos = [];
    arestotays = [];
    ghassankanafani = [];
    renehdikart = [];
    aflaton = [];
    sokrat = [];
    ibrahimlfiki = [];
    mostafalsiba3i = [];
    sherlokholmz = [];
    anismansour = [];
    williamshikspir = [];
    adolfhetler = [];
    jbran5aliljbran = [];
    mostafalotfilmnfloti = [];
    alberteinstein = [];
    l7sanlbsri = [];
    l7akika = [];
    hilinkilr = [];
    najibma7foz = [];
    mi5a2ilna3ima = [];
    naplyonponapart = [];
    mahmouddarwis = [];
    jlalldinlromi = [];
    pawlokwilo = [];
    a7lammost8anmi = [];
    mostafalrafei = [];
    nizarkbarni = [];
    nilsonmandila = [];
    fridriknicha = [];
    ahmadkhalidtawfik = [];
    marktoben = [];
    mostafalotfilmnfloti = [];
  }

  List finalquote = [];

  int Number;

  justrestarthehe() {
    notifyListeners();
  }

  finihsh() {
    mainlist.addAll(Mahmouddarwish().mahmouddarwissh);
    mainlist.addAll(MostafaMahmoud().mostafama7moud);
    mainlist.addAll(Ibrahimlfiki().ibrahimlfiki);
    mainlist.addAll(Williamsheksipir().williamshekspir);
    mainlist.addAll(Aflaton().aflaton);
    mainlist.addAll(PawloKwilo().pawlokwilo);
    mainlist.addAll(Mostafalrafei().mostafalrafei);
    mainlist.addAll(A7lammost8anmi().a7lammost8anmi);
    mainlist.addAll(Nizarkbani().nizarkbani);
    mainlist.addAll(Nilsonmandila().nilsonmandla);
   /* mainlist.addAll(Fridriknicha().fridriknicha);*/
    mainlist.addAll(MarkToben().marktoben);
    mainlist.addAll(L2m().l2m);
    mainlist.addAll(Mostafalotfi().mostafalotfi);
    mainlist.addAll(NaplyonPonapart().naplyonponapart);
    mainlist.addAll(Alberteinistein().alberteinistein);
    mainlist.addAll(Njibma7foz().najibma7foz);
    mainlist.addAll(AhmedKhalidTawfik().ahmedkhalidtawfik);
    mainlist.addAll(Ghassankanafani().ghassankanafani);
  }

  search(textt, title) {
    Refresh(title);
    if (textt.isNotEmpty) {
      List filter = List();
      var wal = finalquote.where((element) =>
          element.text.toLowerCase().contains(textt.toLowerCase()));
      wal.forEach((element) {
        filter.add(element);
      });
      finalquote = [];
      finalquote.addAll(filter);
    }
    else {
      Refresh(title);
    }
    notifyListeners();
  }

  Refresh(title) {
    switch (title) {
      case "غسان كنفاني":
        finalquote =
            ghassankanafani;
        break;
      case "الوقت":
        finalquote = waktlist;
        break;
      case "الحياة":
        finalquote = hyatlis;
        break;
      case "العمر":
        finalquote = l3mrlist;
        break;
      case "الناس":
        finalquote = lnaslist;
        break;
      case "الحب":
        finalquote = l7oblist;
        break;
      case "مضحك":
        finalquote = md7ekliat;
        break;
      case "العلم":
        finalquote = l3lmlist;
        break;
      case "العمل":
        finalquote = l3mllist;
        break;
      case "الموت":
        finalquote = lmawtlist;
        break;
      case "القلب":
        finalquote = lklblist;
        break;
      case "الدنيا":
        finalquote = ldnyalist;
        break;
      case "الحرب":
        finalquote = l7arblist;
        break;
      case "المال":
        finalquote = lmallist;
        break;
      case "الصديق":
        finalquote = lsdiklist;
        break;
      case "العقل":
        finalquote = l3kllist;
        break;
      case "النجاح":
        finalquote = lnja7list;
        break;
      case "الوطن":
        finalquote = lwtanlist;
        break;
      case "الخيانة":
        finalquote = l5yanalist;
        break;
      case "التسامح":
        finalquote = ltsamo7list;
        break;
      case "الحق":
        finalquote = l7aklist;
        break;
      case "الجهل":
        finalquote = ljahllist;
        break;
      case "السياسة":
        finalquote = lsyasalist;
        break;
      case "القوة":
        finalquote = lkwalist;
        break;
      case "الكذب":
        finalquote = lkzeblist;
        break;
      case "العمر":
        finalquote = l3mllist;
        break;
      case "الحزن":
        finalquote = l7znlist;
        break;
      case "الصبر":
        finalquote = lsberlist;
        break;
      case "السعادة":
        finalquote = ls3adalist;
        break;
      case "الأم":
        finalquote = l2mlist;
        break;
      case "الأمل":
        finalquote = l2mllist;
        break;
      case "الفقر":
        finalquote = lfkrlist;
        break;
      case "الأب":
        finalquote = l2blist;
        break;
      case "الصمت":
        finalquote = lsamtlist;
        break;
      case "الغباء":
        finalquote = l8ba2list;
        break;
      case "الحرية":
        finalquote = l7ryalist;
        break;
      case "الثقة":
        finalquote = lsikalist;
        break;
      case "الغرور":
        finalquote = l8rorlist;
        break;
      case "الفشل":
        finalquote = lfshallist;
        break;
      case "الفلسفة":
        finalquote = lflsfalist;
        break;
      case "الماضي":
        finalquote = lmadilist;
        break;
      case "الناس":
        finalquote = lnaslist;
        break;
      case "مصطفى محمود":
        finalquote = mostafamahmoud;
        break;
      case "أفلاطون":
        finalquote = aflaton;
        break;
      case "إبراهيم الفقي":
        finalquote = ibrahimlfiki;
        break;
      case "محمود درويش":
        finalquote = mahmouddarwis;
        break;
      case "وليم شكسبير":
        finalquote = williamshikspir;
        break;
      case "باولو كويلو":
        finalquote = pawlokwilo;
        break;
      case "مصطفى الرافعي":
        finalquote = mostafalrafei;
        break;
      case "احلام مستغانمي":
        finalquote = a7lammost8anmi;
        break;
      case "نزار قباني":
        finalquote = nizarkbarni;
        break;
      case "نيلسون مانديلا":
        finalquote = nilsonmandila;
        break;
      case "أحمد خالد توفيق":
        finalquote =
            ahmadkhalidtawfik;
        break;
      case "نجيب محفوظ":
        finalquote =
            najibma7foz;
        break;
      case "فريدريك نيتشة":
        finalquote = fridriknicha;
        break;
      case "مارك توبن":
        finalquote = marktoben;
        break;
      case "جلال الدين الرومي":
        finalquote =
            jlalldinlromi;
        break;
      case "كل الحكم":
        finalquote = mainlist;
        break;
      case "نابليون بونابرت":
        finalquote = naplyonponapart;
        break;
      case "مصطفى لطفي المنفلوطي":
        finalquote = mostafalotfilmnfloti;
        break;
      case "ألبرت أينشتاين":
        finalquote =
            alberteinstein;
        break;
    }
    notifyListeners();
  }

  bool isopenned = true;
  TextEditingController wlo = TextEditingController();

  SwipeOpen() {
    isopenned = !isopenned;
    notifyListeners();
  }

  var number = 10;

  swapnumberr() {
    number += 10;
    notifyListeners();
  }

  shuffle() {
    mainlist.toSet().toList();
    mainlist.shuffle(Random(300));
  }

  double fontsize = 18.0;

  SharedPreferences prefs;

  getfont() async {
    prefs = await SharedPreferences.getInstance();
    fontsize = prefs.getDouble("fontsize") ?? 18.0;
  }

  savefont() async {
    prefs = await SharedPreferences.getInstance();
    prefs.setDouble("fontsize", fontsize);
  }

  String mz8raf = "wall";

  String aadi = "";

  String nihe2i = "writingfont";

  swapz8rafa(e) async {
    prefs = await SharedPreferences.getInstance();
    if (e.toString() == "مزغرف") {
      nihe2i = "writingfont";
    } else if (e.toString() == "غير مزغرف") {
      nihe2i = "";
    }
    prefs.setString("z8rafa", nihe2i);
  }

  getz8rafa()async{
    prefs = await SharedPreferences.getInstance();
    nihe2i = prefs.getString("z8rafa") ?? "writingfont";
  }
  int gotonum ;


  getgotonum (HomeListView)async{
    var prefs ;
    prefs =  await SharedPreferences.getInstance();
    gotonum = prefs.getInt("autoscrollindex ${HomeListView.text}");
  }
}