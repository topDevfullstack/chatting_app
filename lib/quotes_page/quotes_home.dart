import 'dart:ui';
import 'package:akwal_w7ikam_lkotab/database/class.dart';
import 'package:akwal_w7ikam_lkotab/database/functions.dart';
import 'package:akwal_w7ikam_lkotab/homepagequotes/home%20class.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:share/share.dart';
import 'package:akwal_w7ikam_lkotab/mainquotes.dart';
import 'package:akwal_w7ikam_lkotab/quotes_page/provider.dart';
import 'package:akwal_w7ikam_lkotab/quotes_page/swichsavedbuttomclass.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

final buckt = PageStorageBucket();

class page2 extends StatefulWidget {
  @override
  _page2State createState() => _page2State();
  var listview;
  var oldtitle ;
  page2({this.listview , this.oldtitle}) ;

}
class _page2State extends State<page2> with TickerProviderStateMixin  {
  var num = 20;
  bool first = true ;
  Animation<double> _scale ;
  var HomeListView;
  List  fontt = ["غير مزغرف" , "مزغرف" ] ;
  String selected = "مزغرف" ;
  var oldtitle ;
  Animation<double> animation;
  AnimationController animcontroler;
  var function ;
  var board;
  List isfinal ;
  AnimationController heartanimcontroler;
  Animation<double> heartanimation ;
  var anmated;
  AutoScrollController autoscrollcontroller ;
 int  gotonum ;
  @override
  void initState() {
    super.initState();
    anmated = AnimationController(vsync: this ,duration: Duration(seconds: 5));
    HomeListView = widget.listview;
    oldtitle = widget.oldtitle ?? HomeListView.text;
    animcontroler =
        AnimationController(duration: Duration(milliseconds: 300), vsync: this);
    final curvedanimation =
    CurvedAnimation(parent: animcontroler, curve: Curves.easeInOut);
    animation = Tween<double>(begin: 0, end: 150).animate(curvedanimation)
      ..addListener(() {
        setState(() {});
      });
    autoscrollcontroller = AutoScrollController(
      viewportBoundaryGetter: ()=>
         Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: Axis.vertical);
    heartanimcontroler =
        AnimationController(duration: Duration(milliseconds: 1000), vsync: this);
    final heartcurvedanimation =
    CurvedAnimation(parent: heartanimcontroler, curve: Curves.bounceOut);
    heartanimation = Tween<double>(begin: 0, end: 50).animate(heartcurvedanimation)
      ..addListener(() {
        setState(() {});
      });
    function = Functions();
    numberr = HomeListView.number ?? 10 ;
    board = Functions2();
  }
  bool pop = false;
  var boardname = TextEditingController();
  var numberr ;
  @override
  void dispose() {
    super.dispose();
    animcontroler.dispose();
    heartanimcontroler.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Consumer<MainLists>(
        builder: (context, value, child)=>
            Directionality(
              textDirection: TextDirection.ltr,
              child:
              WillPopScope(
                onWillPop:() async {
                  switch (oldtitle) {
                    case "غسان كنفاني":
                      value.finalquote =
                          value.ghassankanafani;
                      break;
                    case "الوقت":
                      value.finalquote = value.waktlist;
                      break;
                    case "الحياة":
                      value.finalquote = value.hyatlis;
                      break;
                    case "العمر":
                      value.finalquote = value.l3mrlist;
                      break;
                    case "الناس":
                      value.finalquote = value.lnaslist;
                      break;
                    case "الحب":
                      value.finalquote = value.l7oblist;
                      break;
                    case "مضحك":
                      value.finalquote = value.md7ekliat;
                      break;
                    case "العلم":
                      value.finalquote = value.l3lmlist;
                      break;
                    case "العمل":
                      value.finalquote = value.l3mllist;
                      break;
                    case "الموت":
                      value.finalquote = value.lmawtlist;
                      break;
                    case "القلب":
                      value.finalquote = value.lklblist;
                      break;
                    case "الدنيا":
                      value.finalquote = value.ldnyalist;
                      break;
                    case "الحرب":
                      value.finalquote = value.l7arblist;
                      break;
                    case "المال":
                      value.finalquote = value.lmallist;
                      break;
                    case "الصديق":
                      value.finalquote = value.lsdiklist;
                      break;
                    case "العقل":
                      value.finalquote = value.l3kllist;
                      break;
                    case "النجاح":
                      value.finalquote = value.lnja7list;
                      break;
                    case "الوطن":
                      value.finalquote = value.lwtanlist;
                      break;
                    case "الخيانة":
                      value.finalquote = value.l5yanalist;
                      break;
                    case "التسامح":
                      value.finalquote = value.ltsamo7list;
                      break;
                    case "الحقيقة":
                      value.finalquote = value.l7aklist;
                      break;
                    case "الجهل":
                      value.finalquote = value.ljahllist;
                      break;
                    case "السياسة":
                      value.finalquote = value.lsyasalist;
                      break;
                    case "القوة":
                      value.finalquote = value.lkwalist;
                      break;
                    case "الكذب":
                      value.finalquote = value.lkzeblist;
                      break;
                    case "العمر":
                      value.finalquote = value.l3mllist;
                      break;
                    case "الحزن":
                      value.finalquote = value.l7znlist;
                      break;
                    case "الصبر":
                      value.finalquote = value.lsberlist;
                      break;
                    case "السعادة":
                      value.finalquote = value.ls3adalist;
                      break;
                    case "الأم":
                      value.finalquote = value.l2mlist;
                      break;
                    case "الأمل":
                      value.finalquote = value.l2mllist;
                      break;
                    case "الفقر":
                      value.finalquote =value .lfkrlist;
                      break;
                    case "الأب":
                      value.finalquote =value .l2blist;
                      break;
                    case "الصمت":
                      value .finalquote = value.lsamtlist;
                      break;
                    case "الغباء":
                      value .finalquote =value .l8ba2list;
                      break;
                    case "الحرية":
                      value.finalquote = value.l7ryalist;
                      break;
                    case "الثقة":
                      value  .finalquote = value.lsikalist;
                      break;
                    case "الغرور":
                      value.finalquote =value .l8rorlist;
                      break;
                    case "الفشل":
                      value.finalquote = value.lfshallist;
                      break;
                    case "الفلسفة":
                      value.finalquote = value.lflsfalist;
                      break;
                    case "الماضي":
                      value.finalquote = value.lmadilist;
                      break;
                    case "الناس":
                      value.finalquote = value.lnaslist;
                      break;
                    case "مصطفى محمود":
                      value.finalquote = value.mostafamahmoud;
                      break;
                    case "أفلاطون":
                      value.finalquote = value.aflaton;
                      break;
                    case "إبراهيم الفقي":
                      value.finalquote = value.ibrahimlfiki;
                      break;
                    case "محمود درويش":
                      value.finalquote = value.mahmouddarwis;
                      break;
                    case "وليم شكسبير":
                      value.finalquote = value.williamshikspir;
                      break;
                    case "باولو كويلو":
                      value.finalquote = value.pawlokwilo;
                      break;
                    case "مصطفى الرافعي":
                      value.finalquote = value.mostafalrafei;
                      break;
                    case "احلام مستغانمي":
                      value.finalquote = value.a7lammost8anmi;
                      break;
                    case "نزار قباني":
                      value.finalquote = value.nizarkbarni;
                      break;
                    case "نيلسون مانديلا":
                      value.finalquote = value.nilsonmandila;
                      break;
                    case "أحمد خالد توفيق":
                      value.finalquote =
                          value.ahmadkhalidtawfik;
                      break;
                    case "نجيب محفوظ":
                      value.finalquote =
                          value.najibma7foz;
                      break;
                    case "فريدريك نيتشة":
                      value.finalquote = value.fridriknicha;
                      break;
                    case "مارك توبن":
                      value.finalquote = value.marktoben;
                      break;
                    case "جلال الدين الرومي":
                      value.finalquote =
                          value.jlalldinlromi;
                      break;
                    case "كل الحكم":
                      value.finalquote = value.mainlist;
                      break;
                    case "نابليون بونابرت":
                      value.finalquote = value.naplyonponapart;
                      break;
                    case "مصطفى لطفي المنفلوطي":
                      value.finalquote = value.mostafalotfilmnfloti;
                      break;
                    case "ألبرت أينشتاين":
                      value.finalquote =
                          value.alberteinstein;
                      break;
                  }
                  Navigator.of(context).pop();
                  return null ;
                },
                child: Scaffold(

                  backgroundColor: Theme
                      .of(context)
                      .backgroundColor,
                  resizeToAvoidBottomInset: false,
                  appBar: AppBar(

                    leading: IconButton(
                      icon: Icon(Icons.bookmark  ,color: Colors.red,),
                      onPressed: ()async{
                        SharedPreferences prefs ;
                        prefs = await SharedPreferences.getInstance();
                      int index =  prefs.getInt("autoscrollindex ${HomeListView.text}") ?? 0;
                        await   autoscrollcontroller.scrollToIndex(index,duration: Duration(milliseconds: 100) , preferPosition: AutoScrollPosition.begin);
                      },
                    ),
                    actions: [
                      Search(animation,animcontroler),
                      IconButton(
                        icon: Icon(Icons.arrow_forward),
                        color: Theme.of(context).focusColor,
                        onPressed: (){
                          switch (oldtitle) {
                            case "غسان كنفاني":
                              value.finalquote =
                                  value.ghassankanafani;
                              break;
                            case "نابليون بونابرت":
                              value.finalquote = value.naplyonponapart;
                              break;
                            case "مصطفى لطفي المنفلوطي":
                              value.finalquote = value.mostafalotfilmnfloti;
                              break;
                            case "مصطفى محمود":
                              value.finalquote = value.mostafamahmoud;
                              break;
                            case "أحمد خالد توفيق":
                              value.finalquote =
                                  value.ahmadkhalidtawfik;
                              break;
                            case "أفلاطون":
                              value.finalquote = value.aflaton;
                              break;
                            case "إبراهيم الفقي":
                              value.finalquote = value.ibrahimlfiki;
                              break;
                            case "محمود درويش":
                              value.finalquote = value.mahmouddarwis;
                              break;
                            case "وليم شكسبير":
                              value.finalquote = value.williamshikspir;
                              break;
                            case "باولو كويلو":
                              value.finalquote = value.pawlokwilo;
                              break;
                            case "مصطفى الرافعي":
                              value.finalquote = value.mostafalrafei;
                              break;
                            case "ألبرت أينشتاين":
                              value.finalquote =
                                  value.alberteinstein;
                              break;
                            case "احلام مستغانمي":
                              value.finalquote = value.a7lammost8anmi;
                              break;
                            case "نزار قباني":
                              value.finalquote = value.nizarkbarni;
                              break;
                            case "نيلسون مانديلا":
                              value.finalquote = value.nilsonmandila;
                              break;
                            case "فريدريك نيتشة":
                              value.finalquote = value.fridriknicha;
                              break;
                            case "مارك توبن":
                              value.finalquote = value.marktoben;
                              break;
                            case "كل الحكم":
                              value.finalquote = value.mainlist;
                              break;
                            case "الوقت":
                              value.finalquote = value.waktlist;
                              break;
                            case "الحياة":
                              value.finalquote = value.hyatlis;
                              break;
                            case "العمر":
                              value.finalquote = value.l3mrlist;
                              break;
                            case "الناس":
                              value.finalquote = value.lnaslist;
                              break;
                            case "الحب":
                              value.finalquote = value.l7oblist;
                              break;
                            case "مضحك":
                              value.finalquote = value.md7ekliat;
                              break;
                            case "العلم":
                              value.finalquote = value.l3lmlist;
                              break;
                            case "العمل":
                              value.finalquote = value.l3mllist;
                              break;
                            case "الموت":
                              value.finalquote = value.lmawtlist;
                              break;
                            case "القلب":
                              value.finalquote = value.lklblist;
                              break;
                            case "الدنيا":
                              value.finalquote = value.ldnyalist;
                              break;
                            case "الحرب":
                              value.finalquote = value.l7arblist;
                              break;
                            case "المال":
                              value.finalquote = value.lmallist;
                              break;
                            case "الصديق":
                              value.finalquote = value.lsdiklist;
                              break;
                            case "العقل":
                              value.finalquote = value.l3kllist;
                              break;
                            case "نجيب محفوظ":
                              value.finalquote =
                                  value.najibma7foz;
                              break;
                            case "النجاح":
                              value.finalquote = value.lnja7list;
                              break;
                            case "الوطن":
                              value.finalquote = value.lwtanlist;
                              break;
                            case "الخيانة":
                              value.finalquote = value.l5yanalist;
                              break;
                            case "التسامح":
                              value.finalquote = value.ltsamo7list;
                              break;
                            case "الحقيقة":
                              value.finalquote = value.l7aklist;
                              break;
                            case "الجهل":
                              value.finalquote = value.ljahllist;
                              break;
                            case "السياسة":
                              value.finalquote = value.lsyasalist;
                              break;
                            case "القوة":
                              value.finalquote = value.lkwalist;
                              break;
                            case "الكذب":
                              value.finalquote = value.lkzeblist;
                              break;
                            case "العمر":
                              value.finalquote = value.l3mllist;
                              break;
                            case "الحزن":
                              value.finalquote = value.l7znlist;
                              break;
                            case "الصبر":
                              value.finalquote = value.lsberlist;
                              break;
                            case "السعادة":
                              value.finalquote = value.ls3adalist;
                              break;
                            case "الأم":
                              value.finalquote = value.l2mlist;
                              break;
                            case "جلال الدين الرومي":
                              value.finalquote =
                                  value.jlalldinlromi;
                              break;
                            case "الأمل":
                              value.finalquote = value.l2mllist;
                              break;
                            case "الفقر":
                              value.finalquote =value .lfkrlist;
                              break;
                            case "الأب":
                              value.finalquote =value .l2blist;
                              break;
                            case "الصمت":
                              value .finalquote = value.lsamtlist;
                              break;
                            case "الغباء":
                              value .finalquote =value .l8ba2list;
                              break;
                            case "الحرية":
                              value.finalquote = value.l7ryalist;
                              break;
                            case "الثقة":
                              value  .finalquote = value.lsikalist;
                              break;
                            case "الغرور":
                              value.finalquote =value .l8rorlist;
                              break;
                            case "الفشل":
                              value.finalquote = value.lfshallist;
                              break;
                            case "الفلسفة":
                              value.finalquote = value.lflsfalist;
                              break;
                            case "الماضي":
                              value.finalquote = value.lmadilist;
                              break;
                            case "الناس":
                              value.finalquote = value.lnaslist;
                              break;
                            case "كل الحكم":
                              value.finalquote = value.mainlist;
                              break;
                          }
                          Navigator.of(context).pop();
                        },
                      ),
                      SizedBox(width: 5,)
                    ],
                    backgroundColor: Theme.of(context).backgroundColor,
                    centerTitle: animcontroler.value >0 ? false : true,
                    title: Hero(
                        tag: "text" + "${HomeListView.tag}",
                        child:animcontroler.value >0 ? SizedBox(): Material(
                            color: Colors.transparent,
                            child: Text("${HomeListView.text}",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: "Lalezar" ,
                                fontSize: 20 ,

                                color: Theme.of(context).focusColor,
                              ),))),
                  ),
                  floatingActionButton: FloatingActionButton(
                    child: Icon(Icons.format_size_rounded, color: Color(0xff003366),),
                    backgroundColor: Theme.of(context).accentColor,
                    elevation: 15,

                    onPressed: (){
                      showDialog(context: context, builder: (context){
                        return Dialog(
                          backgroundColor: Colors.transparent,
                          child:fontdialog() ,
                        );
                      });
                    },
                  ),
                  body:  PageStorage(
                    bucket: buckt ,
                    child: listconserving(value),
                  )
                ),
              ),
            ),
      ),
    );
  }


  listconserving(value){
    return  Container(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child:  FutureBuilder(
            future: function.allCourses(),
            builder: (context , snapshot) {
              value.getgotonum(HomeListView) ;
              if(snapshot.hasData){
                return
                  Consumer<refresh>(
                    builder: (context , vala , child)=>
                        ListView.builder(
                          key: PageStorageKey(HomeListView.text),
                          itemCount: value.finalquote.length,
                          primary: false,
                          controller: autoscrollcontroller,
                          addAutomaticKeepAlives: true,
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            value.getgotonum(HomeListView) ;
                            value.finalquote[index].color = Theme.of(context).accentColor;
                            snapshot.data.forEach((element) {
                              if (SavedQuote(element).text ==
                                  value.finalquote[index].text) {
                                value.finalquote[index].id = SavedQuote(element).id;
                                value.finalquote[index].color = Colors.red;
                              }
                            });

                            return container(value , index , value.finalquote[index].text);
                          },

                        ),
                  );
              }else if(snapshot.hasError){
                return  Center(child: Text("error"),);
              }
              return Center(child: CircularProgressIndicator(),);
            }
        ),
      ),
    );
  }
  container( value ,index , data){
    return   AutoScrollTag(
      key: ValueKey(index),
      index: index,
      controller: autoscrollcontroller,
      child: Container(
        color: Theme.of(context).backgroundColor,
        child: InkWell(
          child:
          Tooltip(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[600],
            ),
            message: "انقر مرتين للإضافة إلى المفضلة",
            child: Stack(
              children: [
              Container(
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 8.0,
                        spreadRadius: 0.0,
                        offset: Offset(3.0, 3.0), // shadow direction: bottom right
                      )
                    ],
                    color: Color(0xff003366),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomRight: Radius.circular(30) ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5,),
                      Text(
                        "${value.finalquote[index].text}",style: TextStyle(  fontSize: value.fontsize, color: Colors.white,fontFamily:value.nihe2i ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        alignment: Alignment.bottomLeft,
                        child:value.finalquote[index].writer ==HomeListView.text ?  Text(
                          value.finalquote[index].writer , style: TextStyle( fontSize: value.fontsize, color: Colors.white , fontFamily: value.nihe2i),) :TextButton(
                          onPressed: (){
                            var writer = value.finalquote[index].writer;
                            linkwriter(writer, value);
                          },
                          child: Text(
                            value.finalquote[index].writer , style: TextStyle( fontSize: value.fontsize, color: Theme.of(context).accentColor ,  decoration: TextDecoration.underline, fontFamily: "writingfont"),),
                        ),
                      ),
                      Divider(color: Colors.white,),
                      Container(
                        alignment: Alignment.bottomRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment
                              .start,
                          children: [

                            Flexible(
                              child: Tooltip(
                                message: "مفضلة",
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey[600],
                                ),
                                child: IconButton(
                                  icon: Icon(Icons.favorite_border ,color :  value.finalquote[index].color),
                                  onPressed: (){
                                   content(index);
                                  },
                                ),
                              ),
                            ),

                                  Flexible(
                                    child: Tooltip(
                                      message: "مشاركة",
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey[600],
                                      ),
                                      child: IconButton(
                                        alignment: Alignment.centerLeft,

                                        icon: Icon(Icons.share_rounded,  color: Theme.of(context).accentColor,),
                                        onPressed: (){
                                          Share.share("""❞${value.finalquote[index].text}❝
-${value.finalquote[index].writer}""");
                                        },
                                      ),
                                    ),
                                  ),
                            value.finalquote[index].title !=
                                null &&
                                value.finalquote[index]
                                    .title !=
                                    HomeListView.text ?
                            Tooltip(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[600],
                              ),
                              message: "الذهاب لقسم ${value.finalquote[index].title} ",
                              child: TextButton(
                                onPressed: (){
                                  var wal  = value.finalquote[index].title;
                                  link(wal, value);

                                },
                                child: Text(
                                  value.finalquote[index]
                                      .title.toString(), style: TextStyle(fontSize: 15 , color: Theme.of(context).accentColor , decoration: TextDecoration.underline),),

                              ),
                            ) : Container(),
                            value.finalquote[index]
                                .secondtitle != null &&
                                value.finalquote[index]
                                    .secondtitle !=
                                    HomeListView.text ?
                            Tooltip(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[600],
                              ),
                              message: "الذهاب لقسم ${value.finalquote[index].secondtitle} ",
                              child: TextButton(
                                onPressed: (){
                                  var wal  = value.finalquote[index].secondtitle;
                                  link(wal, value);
                                },
                                child: Text(
                                  value.finalquote[index]
                                      .secondtitle
                                      .toString(), style: TextStyle(fontSize: 15 , color: Theme.of(context).accentColor , decoration: TextDecoration.underline),),
                              ),
                            ) : Container(),
                            value.finalquote[index]
                                .thirdtitle != null &&
                                value.finalquote[index]
                                    .thirdtitle !=
                                    HomeListView.text ?
                            Tooltip(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[600],
                              ),
                              message: "الذهاب لقسم ${value.finalquote[index].thirdtitle} ",
                              child: TextButton(
                                onPressed: (){
                                  var wal  = value.finalquote[index].thirdtitle;
                                  link(wal, value);
                                },
                                child: Text(
                                  value.finalquote[index]
                                      .thirdtitle
                                      .toString() , style: TextStyle(fontSize: 15 , color: Theme.of(context).accentColor , decoration: TextDecoration.underline),),
                              ),
                            ) : Container(),
                            value.finalquote[index]
                                .fourthtitle != null &&
                                value.finalquote[index]
                                    .fourthtitle !=
                                    HomeListView.text ?
                            Tooltip(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[600],
                              ),
                              message: "الذهاب لقسم ${value.finalquote[index].fourthtitle} ",
                              child: TextButton(
                                onPressed: () {
                                  var wal = value
                                      .finalquote[index]
                                      .fourthtitle;
                                  link(wal, value);
                                },
                                child: Text(
                                  value.finalquote[index]
                                      .fourthtitle
                                      .toString() ,  style: TextStyle(fontSize: 15 , color:Theme.of(context).accentColor , decoration: TextDecoration.underline),),
                              ),
                            ): Container(),
                          ],
                        ),
                      ),
                    ],
                  )
              ),
          Positioned(
            top: 0,
              left: 20,
              child:IconButton(
                icon: Icon(Icons.bookmark , color : index == value.gotonum  ?  Colors.red : Theme.of(context).accentColor,),
                onPressed: ()async{
                  SharedPreferences prefs ;
                  prefs = await SharedPreferences.getInstance();
                  setState(() {
                    prefs.setInt("autoscrollindex ${HomeListView.text}", index);
                  });
                  },
              ) ),
          Container(
            height: 150 ,
            child: Align(
              alignment: Alignment(0.0 , 0.5),
              child: Container(
                child: Container(
                  child: Icon(Icons.favorite_sharp,color: Colors.red , size: value.finalquote[index].isclicked == true?  heartanimation.value : 0,),
                )
              ),
            ),
          ) ,

          ]
            ),
          ),
          onDoubleTap: ()async{
            if(value.finalquote[index].color == Theme.of(context).accentColor ) {
              var savedquotee = SavedQuote({"text" : value.finalquote[index].text , "writer" : value.finalquote[index].writer, "title" : "كل المفضلة" });
              await function.createCourse(savedquotee) ;
              value.resetclick();
              value.finalquote[index].isclicked = true;
            await   heartanimcontroler.forward().then((value) => heartanimcontroler.reset()).then((valuze) => value.finalquote[index].isclicked = false);
              value.justrestarthehe();
            }else if (value.finalquote[index].color == Colors.red){
              await  function.deletequotes( value.finalquote[index].text);
              value.justrestarthehe();
            }
          },
        ),
      ),
    );

  }

  content(index){
    int wal ;
    return    showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors
            .transparent,
        context: context,
        builder: (builder) =>
       Container(
        height: 400,
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
              decoration: new BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                  borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(50.0),
                      topRight: const Radius.circular(50.0))),
              child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [

                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xff003366),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(50),
                                topLeft: Radius.circular(50),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  offset: Offset(2.0, 0.0), //(x,y)
                                  blurRadius: 5.0,
                                ),
                              ],
                            ),
                            alignment: Alignment.center,
                            child: Text("اضف للمفضلة"),
                          ),
                          flex: 1,
                        ),
                        Expanded(
                          child: Consumer<MainLists>(
                            builder: (context , value , child)=>
                                ListView(
                                    children: [
                                      Container(
                                        child: FutureBuilder(
                                          future: board.allCourses(),
                                          builder: (context, snapshot)=>
                                              Container(
                                                child: Theme(
                                                  data: ThemeData.light().copyWith(splashColor: Color(0xff003366),),
                                                  child: Material(
                                                    color: Theme.of(context).backgroundColor,
                                                    child: ListTile(
                                                      title: Text("كل المفضلة" , style: TextStyle(
                                                          color: Theme.of(context).errorColor
                                                      ),),

                                                      leading: Icon(Icons.folder_open , color: Theme.of(context).accentColor,),
                                                      onTap: ()async{
                                                        var savedquotee = SavedQuote({"text" : value.finalquote[index].text , "writer" : value.finalquote[index].writer, "title" : "كل المفضلة" });
                                                        await function.createCourse(savedquotee) ;
                                                        value.justrestarthehe();
                                                        Navigator.of(context).pop();
                                                        value.finalquote[index].isclicked = true;
                                                        await   heartanimcontroler.forward().then((value) => heartanimcontroler.reset()).then((valuze) => value.finalquote[index].isclicked = false);
                                                      },
                                                    ),
                                                  ),
                                                ),
                                              ),
                                        ) ,
                                      ),
                                      Divider(
                                        color: Color(0xff003366),
                                      ),
                                      Container(
                                        child: FutureBuilder(
                                          future: board.allCourses(),
                                          builder: (context, snapshot){

                                            if(snapshot.hasData){
                                              wal = snapshot.data.length;
                                              return  ListView.builder(

                                                primary: false,
                                                shrinkWrap: true,
                                                itemCount: snapshot.data.length,
                                                itemBuilder: (context , indexx){
                                                  var savedquote = SavedQuote2(snapshot.data[indexx]);
                                                  return Consumer<Saved>(
                                                    builder: (context , valuee , child)=>
                                                        Column(
                                                            children: [
                                                              Theme(
                                                                data: ThemeData.light().copyWith(splashColor: Color(0xff003366),),
                                                                child: Material(
                                                                  color: Theme.of(context).backgroundColor,
                                                                  child: ListTile(
                                                                      title: Text("${savedquote.title}" , style: TextStyle(  color: Theme.of(context).errorColor),),
                                                                      leading: Icon(Icons.folder_open , color: Theme.of(context).accentColor,),
                                                                      onLongPress: (){
                                                                        showDialog(
                                                                            context: context,
                                                                            builder: (context){
                                                                              return Directionality(
                                                                                textDirection: TextDirection.rtl,
                                                                                child: Dialog(
                                                                                  shape: RoundedRectangleBorder(
                                                                                    borderRadius: BorderRadius.circular(20),
                                                                                  ),
                                                                                  elevation: 0,
                                                                                  backgroundColor: Colors.transparent,
                                                                                  child: contentBox(context , savedquote),
                                                                                ),
                                                                              );
                                                                            }
                                                                        );
                                                                      },
                                                                      trailing: IconButton(icon :Icon(Icons.edit , color: Colors.green,) , onPressed: (){
                                                                        boardname.text = savedquote.title;
                                                                        showModalBottomSheet(
                                                                            isScrollControlled: true,
                                                                            backgroundColor: Colors
                                                                                .transparent,
                                                                            context: context,
                                                                            builder: (builder) {
                                                                              return  folderupdating(savedquote);
                                                                            }
                                                                        );
                                                                      } ,),
                                                                      onTap: ()async{
                                                                        var savedquotee = SavedQuote({"text" : value.finalquote[index].text , "writer" : value.finalquote[index].writer, "title" : savedquote.title  });
                                                                        await function.createCourse(savedquotee) ;
                                                                        value.justrestarthehe();
                                                                        Navigator.of(context).pop();
                                                                        value.finalquote[index].isclicked = true;
                                                                        await   heartanimcontroler.forward().then((value) => heartanimcontroler.reset()).then((valuze) => value.finalquote[index].isclicked = false);
                                                                      }
                                                                  ),
                                                                ),
                                                              ),
                                                              Divider(
                                                                color: Color(0xff003366),
                                                              ),
                                                            ]
                                                        ),
                                                  );
                                                },
                                              );
                                            }
                                            return Container();
                                          },
                                        ),
                                      ),
                                    ]
                                ),
                          ),
                          flex: 7,
                        ),
                      ],
                    ),
                    Positioned(
                      right: 10,
                      bottom: 10,
                      child: Material(
                        borderRadius: BorderRadius.circular(360),
                        child: InkWell(
                          onTap: ()async{
                            if(wal == 40){
                              showDialog(
                                  context: context,
                                  builder: (context){
                                    return Directionality(
                                        textDirection: TextDirection.rtl,
                                        child: AlertDialog(
                                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                          backgroundColor: Theme.of(context).backgroundColor,
                                          content: Text("لا يمكن اضافة المزيد من المجلدات", style: TextStyle(color: Theme.of(context).errorColor),),
                                          title: Text("تنبيه" , style: TextStyle(color: Theme.of(context).errorColor),),
                                          actions: [
                                            TextButton(
                                              child: Text("حسنا", style: TextStyle(fontSize: 20, color: Color(0xff003366)),),
                                              onPressed: (){
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                          ],
                                        )
                                    );
                                  }
                              );
                            }  else{     boardname.text = "";
                            showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors
                                    .transparent,
                                context: context,
                                builder: (builder) {
                                  return  foldernaming();
                                }
                            );}
                          },
                          child: Container(
                            height: 50,
                            width: 50,
                            child: Icon(Icons.add , color: Colors.white,),
                            decoration: BoxDecoration(
                              color: Color(0xff003366),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  offset:Offset(2.0, 2.0),
                                  color: Colors.black,
                                  //(x,y)
                                  blurRadius: 5.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]
              )
          ),
        ),
      ),
    );
  }

  link(wal , value){
    isfinal = value.finalquote ;
    switch (wal) {
      case "الوقت":
        value.finalquote = value.waktlist;
        break;
      case "الحياة":
        value.finalquote = value.hyatlis;
        break;
      case "العمر":
        value.finalquote = value.l3mrlist;
        break;
      case "الناس":
        value.finalquote = value.lnaslist;
        break;
      case "الحب":
        value.finalquote = value.l7oblist;
        break;
      case "مضحك":
        value.finalquote = value.md7ekliat;
        break;
      case "العلم":
        value.finalquote = value.l3lmlist;
        break;
      case "الذكريات":
        value.finalquote = value.lmadilist;
        break;
      case "العمل":
        value.finalquote = value.l3mllist;
        break;
      case "الموت":
        value.finalquote = value.lmawtlist;
        break;
      case "القلب":
        value.finalquote = value.lklblist;
        break;
      case "الدنيا":
        value.finalquote = value.ldnyalist;
        break;
      case "الحرب":
        value.finalquote = value.l7arblist;
        break;
      case "المال":
        value.finalquote = value.lmallist;
        break;
      case "الصديق":
        value.finalquote = value.lsdiklist;
        break;
      case "العقل":
        value.finalquote = value.l3kllist;
        break;
      case "النجاح":
        value.finalquote = value.lnja7list;
        break;
      case "الوطن":
        value.finalquote = value.lwtanlist;
        break;
      case "الخيانة":
        value.finalquote = value.l5yanalist;
        break;
      case "التسامح":
        value.finalquote = value.ltsamo7list;
        break;
      case "الحقيقة":
        value.finalquote = value.l7aklist;
        break;
      case "الجهل":
        value.finalquote = value.ljahllist;
        break;
      case "السياسة":
        value.finalquote = value.lsyasalist;
        break;
      case "القوة":
        value.finalquote = value.lkwalist;
        break;
      case "الكذب":
        value.finalquote = value.lkzeblist;
        break;
      case "العمر":
        value.finalquote = value.l3mllist;
        break;
      case "الحزن":
        value.finalquote = value.l7znlist;
        break;
      case "الصبر":
        value.finalquote = value.lsberlist;
        break;
      case "السعادة":
        value.finalquote = value.ls3adalist;
        break;
      case "الأم":
        value.finalquote = value.l2mlist;
        break;
      case "الأمل":
        value.finalquote = value.l2mllist;
        break;
      case "الفقر":
        value.finalquote =value .lfkrlist;
        break;
      case "الأب":
        value.finalquote =value .l2blist;
        break;
      case "الصمت":
        value .finalquote = value.lsamtlist;
        break;
      case "الغباء":
        value .finalquote =value .l8ba2list;
        break;
      case "الحرية":
        value.finalquote = value.l7ryalist;
        break;
      case "الثقة":
        value  .finalquote = value.lsikalist;
        break;
      case "الغرور":
        value.finalquote =value .l8rorlist;
        break;
      case "الفشل":
        value.finalquote = value.lfshallist;
        break;
      case "الفلسفة":
        value.finalquote = value.lflsfalist;
        break;
      case "الماضي":
        value.finalquote = value.lmadilist;
        break;
      case "الناس":
        value.finalquote = value.lnaslist;
        break;
      case "كل الحكم":
        value.finalquote = value.mainlist;
        break;
    }
    value.finalquote == isfinal ? null : Navigator.of(context).push(MaterialPageRoute(builder: (context) => page2(  listview: HomeSectionsClass(
        text: wal ,
        number : 10,
        tag: "heh"),
      oldtitle:  oldtitle ,
    ) ,
    )
    )
    ;
  }

  linkwriter(writer , set){
    isfinal = set.finalquote ;
    switch (writer ) {
      case "مصطفى محمود":
        set.finalquote = set.mostafamahmoud;
        break;
      case "أفلاطون":
        set.finalquote = set.aflaton;
        break;
      case "إبراهيم الفقي":
        set.finalquote = set.ibrahimlfiki;
        break;
      case "محمود درويش":
        set.finalquote = set.mahmouddarwis;
        break;
      case "وليم شكسبير":
        set.finalquote = set.williamshikspir;
        break;
      case "نجيب محفوظ":
        set.finalquote =
            set.najibma7foz;
        break;
      case "باولو كويلو":
        set.finalquote = set.pawlokwilo;
        break;
      case "مصطفى الرافعي":
        set.finalquote = set.mostafalrafei;
        break;
      case "أحمد خالد توفيق":
        set.finalquote =
            set.ahmadkhalidtawfik;
        break;
      case "غسان كنفاني":
        set.finalquote =
            set.ghassankanafani;
        break;
      case "احلام مستغانمي":
        set.finalquote = set.a7lammost8anmi;
        break;
      case "نزار قباني":
        set.finalquote = set.nizarkbarni;
        break;
      case "نيلسون مانديلا":
        set.finalquote = set.nilsonmandila;
        break;
      case "فريدريك نيتشة":
        set.finalquote = set.fridriknicha;
        break;
      case "جلال الدين الرومي":
        set.finalquote =
            set.jlalldinlromi;
        break;
      case "مارك توبن":
        set.finalquote = set.marktoben;
        break;
      case "كل الحكم":
        set.finalquote = set.mainlist;
        break;
      case "نابليون بونابرت":
        set.finalquote = set.naplyonponapart;
        break;
      case "مصطفى لطفي المنفلوطي":
        set.finalquote = set.mostafalotfilmnfloti;
        break;
      case "ألبرت أينشتاين":
        set.finalquote =
            set.alberteinstein;
        break;
    }
    set.finalquote == isfinal ? null:   Navigator.of(context).push(MaterialPageRoute(builder: (context) => page2(  listview: HomeSectionsClass(
        text: writer ,
        number: 10,
        tag: "heh"),
      oldtitle:  oldtitle ,
    ) ,
    ),
    );
  }
  foldernaming(){
    return  Stack(
      children: [
        Positioned(
          width: MediaQuery.of(context).size.width,
          bottom:    MediaQuery.of(context).viewInsets.bottom,
          child:  Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              height: 200,
              child: Consumer2<refresh , MainLists>(
                builder: (context , value,set, child)=>
                    Column(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color(0xff003366),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  topLeft: Radius.circular(20),
                                )
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Center(
                                  child: Text("اسم الملف" , style: TextStyle(color: Colors.white),),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width/2 - 80,
                                ),
                                Container(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    margin: EdgeInsets.only(right: 10),
                                    child: IconButton(
                                      onPressed: ()async{
                                        if(boardname.text != ""){
                                          var savedquote = SavedQuote2({"title" : boardname.text.toString() });
                                          await board.createCourse(savedquote) ;
                                          set.justrestarthehe();
                                          Navigator.of(context).pop()  ;
                                        }
                                      },
                                      icon: boardname.text != "" ? Icon(Icons.add, size: 30, color: Colors.green,) :Icon(Icons.add, size: 30, color: Colors.red) ,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(

                          child: Container(
                            color: Theme.of(context).backgroundColor,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    child: Icon(Icons.folder_open , size: 50, color: Theme.of(context).accentColor,),
                                  ),
                                ),
                                Expanded(
                                  child: IntrinsicWidth(
                                    stepWidth: 50,
                                    child: TextField(
                                      controller: boardname,
                                      onChanged: (wal){
                                        value.refress();
                                      },
                                      textDirection: TextDirection.rtl,
                                      keyboardType: TextInputType.text,
                                      decoration: InputDecoration(
                                          counterStyle: TextStyle(
                                          )
                                      ),
                                      style: TextStyle(
                                          color: Theme.of(context).errorColor),
                                      cursorColor: Theme.of(context).errorColor,

                                      maxLength: 25,

                                      selectionWidthStyle: BoxWidthStyle.tight,
                                      autofocus: true,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: IconButton(
                                      onPressed: (){
                                        Navigator.of(context).pop()  ;
                                      },
                                      icon: Icon(Icons.cancel_outlined , size: 30, color:Colors.red,),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          flex: 3,
                        ),
                      ],
                    ),
              )
          ),
        )
      ],
    );
  }
  folderupdating(savedquote){
    return  Stack(
      children: [
        Positioned(
          width: MediaQuery.of(context).size.width,
          bottom:   MediaQuery.of(context).viewInsets.bottom,
          child:  Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              height: 200,
              child: Consumer<refresh>(
                builder: (context , value , child)=>
                    Column(
                      children: [
                        Expanded(
                          child: Container(

                            decoration: BoxDecoration(
                                color: Color(0xff003366),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  topLeft: Radius.circular(20),
                                )
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Center(
                                  child: Text("اسم الملف" , style: TextStyle(color: Colors.white),),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width/2 - 80,
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 10),
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    child: IconButton(
                                      onPressed: ()async{
                                        if(boardname.text  != ""){
                                          var savedquotee = SavedQuote2({ "id" : savedquote.id ,"title" : boardname.text.toString() });
                                          await board.Onupdate(savedquotee) ;
                                          await function.updatequotes(savedquote.title.toString() , boardname.text.toString());
                                          Navigator.of(context).pop()  ;
                                        }
                                      },
                                      icon: boardname.text != "" ? Icon(Icons.add, size: 30, color: Colors.green,) :Icon(Icons.add, size: 30, color: Colors.red) ,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(

                          child: Container(
                            color: Theme.of(context).backgroundColor,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    child: Icon(Icons.folder_open , size: 50, color: Theme.of(context).accentColor,),
                                  ),
                                ),
                                Expanded(
                                  child: IntrinsicWidth(
                                    stepWidth: 50,
                                    child: TextField(
                                      onChanged: (wal){
                                        value.refress();
                                      },
                                      controller: boardname,
                                      keyboardType: TextInputType.text,
                                      textDirection: TextDirection.rtl,
                                      decoration: InputDecoration(
                                          counterStyle: TextStyle(
                                          )
                                      ),
                                      style: TextStyle(
                                          color: Theme.of(context).errorColor),
                                      cursorColor: Theme.of(context).errorColor,

                                      maxLength: 25,
                                      selectionWidthStyle: BoxWidthStyle.tight,
                                      autofocus: true,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: IconButton(
                                      onPressed: (){
                                        Navigator.of(context).pop()  ;
                                      },
                                      icon: Icon(Icons.cancel_outlined , size: 30, color:Colors.red,),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          flex: 3,
                        ),
                      ],
                    ),
              )
          ),
        )
      ],
    );
  }
  contentBox(context , savedquote){
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,

            children: <Widget>[
              Container(
                color: Colors.transparent,
                height: 50,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).backgroundColor,
                ),

                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text("حذف المجلد" , style: TextStyle(color: Theme.of(context).errorColor , fontSize: 30,fontFamily: "Lalezar") ,),              SizedBox(height: 15,),
                    Text("هل انت متأكد أنك تريد حذف هذا المجلد ؟ سيؤدي حذف المجلد إلى حذف كافة محتوياته." ,textAlign: TextAlign.center, style: TextStyle(color: Theme.of(context).errorColor , fontFamily: "writingfont"),),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: (){
                              Navigator.of(context).pop();
                            },
                            child: Text("إلغاء",style: TextStyle(fontSize: 18 , color: Color(0xff003366)),)),
                        Consumer<MainLists>(
                          builder: (context , value , child)=>
                              TextButton(
                                  onPressed: ()async{
                                    await board.deletefolder(savedquote.id);
                                    await function.deletequotes2(savedquote.title);
                                    value.justrestarthehe();
                                    Navigator.of(context).pop();
                                  },
                                  child: Text("حذف",style: TextStyle(fontSize: 18 , color: Colors.red),)),
                        ),

                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: 10,
          right: MediaQuery.of(context).size.width/3.2,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.red,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(2.0, 0.0), //(x,y)
                    spreadRadius: 0.0,
                    blurRadius: 5.0,
                  ),
                ],
                shape: BoxShape.circle,
                image: DecorationImage(
                    image:  AssetImage("assets/delete.gif"),
                    fit: BoxFit.cover
                )
            ),
          ),
          height: 70,
          width: 70,

        ),
      ],
    );
  }
  Search(animation , snimcontroller){
    return   Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin:
            EdgeInsets.only(left: 5, right: 0, top: 5, bottom: 5),
            width: animation.value,
            height: 40,
            decoration: BoxDecoration(
                color: Theme
                    .of(context)
                    .accentColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  topLeft: Radius.circular(50),
                )),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Consumer<MainLists>(
                builder: (context, value, child) {
                  return TextField(
                    style: TextStyle(
                    ),
                    controller: value.wlo,
                    keyboardType: TextInputType.text,
                    cursorColor: Theme
                        .of(context)
                        .backgroundColor,
                    textDirection: TextDirection.rtl,
                    onChanged: (wal) {
                      value.search(wal , HomeListView.text);
                    },
                    decoration:
                    InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.fromLTRB(5.0, 1.0, 5.0, 1.0),
                        border: InputBorder.none),
                  );
                },
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(
                  left: 0, right: 0, top: 5, bottom: 5),
              decoration: BoxDecoration(
                  color: Theme
                      .of(context)
                      .accentColor,
                  borderRadius: animation.value > 1
                      ? BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    topRight: Radius.circular(50),
                  )
                      : BorderRadius.circular(50)),
              width: 40,
              height: 40,
              child: Consumer<MainLists>(
                builder: (context, value, child) {
                  return value.isopenned
                      ? IconButton(
                    splashRadius: 10,
                    icon: Icon(Icons.search),
                    color: Theme
                        .of(context)
                        .backgroundColor,
                    onPressed: () {
                      animcontroler.forward();
                      value.SwipeOpen();
                    },
                  )
                      : IconButton(
                    splashRadius: 10,
                    color: Theme
                        .of(context)
                        .backgroundColor,
                    icon: Icon(Icons.clear),
                    onPressed: () {
                      value.Refresh(HomeListView.text);
                      FocusScope.of(context).unfocus();
                      animcontroler.reverse();
                      value.SwipeOpen();
                      value.wlo.clear();
                    },
                  );
                },
              ))
        ],
      ),
    );
  }

  fontdialog(){
    return    Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff003366),
          borderRadius: BorderRadius.circular(13),
        ),

        child: SingleChildScrollView(
          child: Consumer<MainLists>(
            builder: (context , value , child)=>
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Text("شكل الخط" , style: TextStyle(fontSize: 18 , ),),
                        ),
                        DropdownButton(items: fontt.map((e) {
                          return DropdownMenuItem(
                            value: e,
                            onTap: (){
                              value.swapz8rafa(e) ;
                            },
                            child: Text(e, style: TextStyle(color: Theme.of(context).accentColor),),
                          );
                        }).toList(),
                          onChanged: (l){
                              selected = l;
                              value.justrestarthehe();
                          },
                          value:value.nihe2i == "writingfont" ? "مزغرف" : "غير مزغرف",
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Flexible(
                          child: Container(
                            padding: EdgeInsets.all(10),
                            alignment: Alignment.center,
                            child: Text("حجم الخط", textAlign: TextAlign.center,style: TextStyle( fontSize: 18 , fontFamily: ""),),
                          ),
                        ),
                        Flexible(
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Slider(
                              activeColor: Theme.of(context).accentColor,
                              inactiveColor: Colors.white,
                              divisions: 40,
                              min: 10.0,
                              label: value.fontsize.toStringAsFixed(1).toString(),
                              max: 30.0,
                              value: value.fontsize, onChanged:(e) {
                              value.fontsize = e;
                              value.savefont();
                              value.justrestarthehe();
                            },
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
          ),
        ),
      ),
    );
  }

}

