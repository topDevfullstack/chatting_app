import 'package:akwal_w7ikam_lkotab/database/class.dart';
import 'package:akwal_w7ikam_lkotab/database/functions.dart';
import 'package:akwal_w7ikam_lkotab/homepagequotes/sort%20provider.dart';
import 'package:akwal_w7ikam_lkotab/homepagequotes/tabbar_sliver_appbar.dart';
import 'package:akwal_w7ikam_lkotab/mainquotes.dart';
import 'package:akwal_w7ikam_lkotab/savedquoterpage/SavedQuotePage.dart';
import 'package:flutter/material.dart';
import 'package:akwal_w7ikam_lkotab/allquotes/allquotes page.dart';
import 'package:provider/provider.dart';
import 'package:akwal_w7ikam_lkotab/themeprovider.dart';
import 'package:share/share.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer>{
  var function;
  AnimationController heartanimcontroler;
  Animation<double> heartanimation ;
  List  fontt = ["غير مزغرف" , "مزغرف" ] ;
  String selected = "مزغرف" ;
  var board;
  var timeee ;
  var indexxxx;
  DateTime today ;
  @override
  void initState() {
    super.initState();
    function = Functions();
    board = Functions2();
    timeee = tinme();
     today = new DateTime.now();
     bool firstpage = true ;
     bool secondpage = false ;
     bool thirdpage = false ;
  }

  var boardname = TextEditingController();
  var wal =25.0;
  double lo ;
  String man = "" ;

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(

        color: Colors.white,
        width: mediaQuery.size.width * 0.60,
        height: mediaQuery.size.height,
        child: Column(
          children: <Widget>[
            Container(
              color: Color(0xff00264d),
              child: Container(
                  margin: EdgeInsets.only(right: 1),
                  height: 150,
                  decoration: BoxDecoration(
                    color: Theme
                        .of(context)
                        .backgroundColor,
                  ),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage("assets/drawerimage.png")
                            )
                        ),
                      ),
                      Consumer<ThemeProvider>(
                        builder: (context, value, child) =>
                            Container(
                              alignment: Alignment.topRight,
                              child: IconButton(
                                icon: Icon(Icons.highlight_rounded),
                                onPressed: () {
                                  Provider.of<ThemeProvider>(
                                      context, listen: false).swapTheme();
                                },
                              ),
                            ),
                      ),
                    ],
                  )
              ),
            ),
            Expanded(
              flex: 50,
              child: Consumer<SortProvider>(
                  builder: (context, value, child) =>
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff00264d),
                          border: Border(right: BorderSide(color: Colors.white, width: 0.3))
                        ),

                        child: Container(
                          color: Theme
                              .of(context)
                              .backgroundColor,
                          margin: EdgeInsets.only(right: 1),
                          child: Container(
                            child: SingleChildScrollView(
                              physics: BouncingScrollPhysics(),
                              child: Column(
                                children: [
                                  SizedBox(height: 20,),
                                  Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                      onTap: () {
                                        value.OpenDrawer();
                                        Navigator.of(context).pushAndRemoveUntil(
                                            MaterialPageRoute(builder: (context) => Home()), (
                                            route) => false);
                                        value.drawerStatus = FSBStatus.FSB_CLOSE;
                                      },
                                      child: Container(

                                        decoration: BoxDecoration(
                                          border: Border(top: BorderSide(  color: Colors.white70, width: 0.5,), bottom:  BorderSide(  color: Colors.white70, width: 0.5,),)
                                        ),
                                        height: 70,
                                        child: Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(10),
                                              child: Icon(
                                                Icons.home_outlined, color: Theme
                                                  .of(context)
                                                  .accentColor, size: 30,),
                                            ),
                                            Text("الصفحة الرئيسية", style: TextStyle(fontSize: 18),),

                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                      onTap: () {
                                        value.OpenDrawer();
                                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Saved()));
                                        value.drawerStatus = FSBStatus.FSB_CLOSE;
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border: Border( bottom:  BorderSide(  color: Colors.white70, width: 0.5,),)
                                        ),
                                        height: 70,
                                        child: Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(10),
                                              child: Icon(
                                                Icons.star_border_outlined, color: Theme
                                                  .of(context)
                                                  .accentColor, size: 30,),
                                            ),
                                            Text("المفضلة",style: TextStyle(fontSize: 18)),

                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                              Consumer<MainLists>(
                                builder: (context, value, child)=>
                                     Material(
                                      color: Colors.transparent,
                                      child: InkWell(
                                        onTap: () async{
                                          today = new DateTime.now();
                                          var date  = await timeee.allCourses();
                                          var indexx = await  timeee.all() ;

                                          if(Time(date[0]).time != today.day){
                                            var a7a = Time({"id" : 1 , "time" : today.day});
                                            var a7o = Indexx({"id" : 1 , "indexx" : value.randomm()});
                                            await timeee.Onupdate(a7a);
                                            await timeee.update(a7o);
                                            indexx = await  timeee.all() ;
                                          }
                                          showDialog(
                                              context: context,
                                              builder: (context) {
                                                return Directionality(
                                                  textDirection: TextDirection
                                                      .rtl,
                                                  child: Dialog(
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius
                                                          .circular(20),
                                                    ),
                                                    elevation: 0,
                                                    backgroundColor: Colors
                                                        .transparent,
                                                    child: contentBox(context,
                                                        Indexx(indexx[0]).index
                                                    ),
                                                  ),
                                                );
                                              }
                                          );
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border( bottom:  BorderSide(  color: Colors.white70, width: 0.5,),)
                                          ),
                                          height: 70,
                                          //hgff
                                          child: Row(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.all(10),
                                                child: Icon(
                                                  Icons.calendar_today_outlined,
                                                  color: Theme
                                                      .of(context)
                                                      .accentColor, size: 30,),
                                              ),
                                              Text(" إقتباس اليوم",style:   TextStyle(fontSize: 18)),

                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        IconButton(
                                          icon: Icon(Icons.info_outline_rounded ,color: Theme.of(context).accentColor,),
                                          onPressed: (){
                                            showDialog(
                                                context: context,
                                                builder: (context) {
                                                  return Directionality(
                                                    textDirection: TextDirection
                                                        .rtl,
                                                    child: Dialog(
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius
                                                            .circular(20),
                                                      ),
                                                      elevation: 0,
                                                      backgroundColor: Colors
                                                          .transparent,
                                                      child: infoo(),
                                                    ),
                                                  );
                                                }
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Color(0xff00264d),
                                borderRadius: BorderRadius.only(topRight: Radius
                                    .circular(20))
                            ),
                            height: MediaQuery
                                .of(context)
                                .size
                                .height - 170,
                          ),
                        ),
                      )
              ),
            ),
          ],
        ),
      ),
    );
  }


  contentBox(context, index) {
    return Consumer<MainLists>(
      builder: (context, value, child) =>
          FutureBuilder(
            future:function.allCourses(),
            builder: (context , snapshot) {
              value.mainlist[index].color = Theme.of(context).accentColor;

              if(snapshot.hasData == true){
                snapshot.data.forEach((element) {
                  if (SavedQuote(element).text ==
                      value.mainlist[index].text) {
                    value.mainlist[index].color = Colors.red;
                  }
                });
                return   SingleChildScrollView(
                  child: InkWell(
                    splashColor: Colors.transparent,
                    child:
                    Tooltip(
                      message: "انقر مرتين للإضافة إلى المفضلة",
                      child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Color(0xff003366),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30)),
                          ),
                          child:
                             Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    value.mainlist[index].text,
                                    style: TextStyle(fontSize:  value.fontsize,
                                      color: Colors.white,fontFamily: "writingfont"),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      value.mainlist[index].writer,
                                      style: TextStyle(fontSize:  value.fontsize, color: Theme
                                          .of(context)
                                          .accentColor,fontFamily: "writingfont"),),
                                  ),
                                  Divider(color: Colors.white,),
                                  Container(
                                    alignment: Alignment.bottomRight,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .start,
                                      children: [
                                        IconButton(
                                          icon: Icon(
                                              Icons.favorite_border,
                                              color: value.mainlist[index].color),
                                          tooltip: "المفضلة",
                                          onPressed: () {
                                            showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor: Colors
                                                    .transparent,
                                                context: context,
                                                builder: (builder) {
                                                  return content(index);
                                                }
                                            );
                                          },
                                        ),
                                        Builder(
                                          builder: (context) =>
                                              IconButton(
                                                alignment: Alignment.centerLeft,
                                                tooltip: "نشر",
                                                icon: Icon(
                                                  Icons.share_rounded, color: Theme
                                                    .of(context)
                                                    .accentColor,),
                                                onPressed: () {
                                                      Share.share("""❞${value.mainlist[index].text}❝
-${value.mainlist[index].writer}""");
                                                },
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                      ),
                    onDoubleTap: () async {
                      if (value.mainlist[index].color == Theme
                          .of(context)
                          .accentColor) {
                        var savedquotee = SavedQuote({
                          "text": value.mainlist[index].text,
                          "writer": value.mainlist[index].writer,
                          "title": "كل المفضلة"
                        });
                        await function.createCourse(savedquotee);
                           value.justrestarthehe();
                      } else if (value.mainlist[index].color == Colors.red) {
                        await function.deletequotes(value.mainlist[index].text);
                        value.justrestarthehe();
                      }
                    },
                  )
                );
              }
            return   Container();
            }
          ),
    );
  }

  content(index) {
    int wal;
    return Container(
      height: 400,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
            decoration: new BoxDecoration(
                color: Theme
                    .of(context)
                    .backgroundColor,
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
                          builder: (context, value, child) =>
                              ListView(
                                  children: [
                                    Container(
                                      child: FutureBuilder(
                                        future: board.allCourses(),
                                        builder: (context, snapshot) =>
                                            Container(
                                              child: Theme(
                                                data: ThemeData.light()
                                                    .copyWith(
                                                  splashColor: Color(
                                                      0xff003366),),
                                                child: Material(
                                                  color: Theme
                                                      .of(context)
                                                      .backgroundColor,
                                                  child: ListTile(
                                                    title: Text("كل المفضلة",
                                                      style: TextStyle(
                                                          color: Theme
                                                              .of(context)
                                                              .errorColor
                                                      ),),

                                                    leading: Icon(
                                                      Icons.folder_open,
                                                      color: Theme
                                                          .of(context)
                                                          .accentColor,),
                                                    onTap: () async {
                                                      var savedquotee = SavedQuote(
                                                          {
                                                            "text": value
                                                                .mainlist[index]
                                                                .text,
                                                            "writer": value
                                                                .mainlist[index]
                                                                .writer,
                                                            "title": "كل المفضلة"
                                                          });
                                                      await function
                                                          .createCourse(
                                                          savedquotee);
                                                      value.justrestarthehe();
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ),
                                      ),
                                    ),
                                    Divider(
                                      color: Color(0xff003366),
                                    ),
                                    Container(
                                      child: FutureBuilder(
                                        future: board.allCourses(),
                                        builder: (context, snapshot) {
                                          if (snapshot.hasData) {
                                            wal = snapshot.data.length;
                                            return ListView.builder(

                                              primary: false,
                                              shrinkWrap: true,
                                              itemCount: snapshot.data.length,
                                              itemBuilder: (context, indexx) {
                                                var savedquote = SavedQuote2(
                                                    snapshot.data[indexx]);
                                                return
                                                      Column(
                                                          children: [
                                                            Theme(
                                                              data: ThemeData
                                                                  .light()
                                                                  .copyWith(
                                                                splashColor: Color(
                                                                    0xff003366),),
                                                              child: Material(
                                                                color: Theme
                                                                    .of(context)
                                                                    .backgroundColor,
                                                                child: ListTile(
                                                                    title: Text(
                                                                      "${savedquote
                                                                          .title}",
                                                                      style: TextStyle(
                                                                          color: Theme
                                                                              .of(
                                                                              context)
                                                                              .errorColor),),
                                                                    leading: Icon(
                                                                      Icons
                                                                          .folder_open,
                                                                      color: Theme
                                                                          .of(
                                                                          context)
                                                                          .accentColor,),
                                                                    onTap: () async {
                                                                      var savedquotee = SavedQuote(
                                                                          {
                                                                            "text": value
                                                                                .mainlist[index]
                                                                                .text,
                                                                            "writer": value
                                                                                .mainlist[index]
                                                                                .writer,
                                                                            "title": savedquote
                                                                                .title
                                                                          });
                                                                      await function
                                                                          .createCourse(
                                                                          savedquotee);
                                                                      value
                                                                          .justrestarthehe();
                                                                      Navigator
                                                                          .of(
                                                                          context)
                                                                          .pop();
                                                                    }
                                                                ),
                                                              ),
                                                            ),
                                                            Divider(
                                                              color: Color(
                                                                  0xff003366),
                                                            ),
                                                          ],
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
                ]
            )
        ),
      ),
    );
  }

  infoo(){
  return Container(
    child: Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 45,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).backgroundColor,
                ),
                padding: EdgeInsets.all(20),

                child: Column(
                  children: [
                    Text("حول التطبيق", style: TextStyle(fontSize: 20 , color: Theme.of(context).errorColor , fontWeight: FontWeight.bold),),
                    Text("""تطبيق حكم واقتباسات هو تطبيق يحتوي على آلاف الحكم والاقتباسات الجميلة التي دونتها  شخصيات معروفة،  تم تجميع هذه الحكم والإقتباسات وتقسيمها على حسب أسماء الكتاب ومضمونها لتسهيل الوصول  لفئة محددة منها .

يمكنك التواصل معنا عبر البريد الإلكتروني :
hikamwktibasat@gmail.com
""" , style: TextStyle(color: Theme.of(context).errorColor),),
                  ],
                )
              )
            ],
          ),
        ),
        Positioned(
          top: 0,
          right: MediaQuery.of(context).size.width/2 - 70,
          child: Container(
            height: 70,
            width: 50,
            decoration: BoxDecoration(
              color:  Theme.of(context).backgroundColor,
              shape: BoxShape.circle,
            ),

            child: Icon(Icons.info_outline_rounded , size: 50,color: Theme.of(context).accentColor,),
          ),
        ),
      ],
    ),
  );
  }
  }


