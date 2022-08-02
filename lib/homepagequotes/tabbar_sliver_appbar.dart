import 'package:akwal_w7ikam_lkotab/allquotes/allquotes%20page.dart';
import 'package:akwal_w7ikam_lkotab/homepagequotes/search%20provider.dart';
import 'package:akwal_w7ikam_lkotab/homepagequotes/sort%20provider.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'drawer.dart';
import 'package:provider/provider.dart';
import 'package:akwal_w7ikam_lkotab/mainquotes.dart';
import 'package:akwal_w7ikam_lkotab/quotes_page/quotes_home.dart';
import 'package:swipedetector/swipedetector.dart';
import 'home class.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  String one = "1";
  String two = "2";
  TextEditingController textController = TextEditingController();
  Animation<double> animation;
  AnimationController animcontroler;
  var a7a = true;
  var a7o = true;
  var smoothSort;

  @override
  void initState() {
    super.initState();
    animcontroler =
        AnimationController(duration: Duration(milliseconds: 200), vsync: this);
    final curvedanimation =
    CurvedAnimation(parent: animcontroler, curve: Curves.bounceInOut);
    animation = Tween<double>(begin: 0, end: 150).animate(curvedanimation)
      ..addListener(() {
        setState(() {});
      });
  }

  var boradname;

  FSBStatus drawerStatus;

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Consumer<SortProvider>(
            builder: (context, value, child) =>
                SwipeDetector(
                  onSwipeRight: () {
                    value.OpenDrawer();
                    value.drawerStatus = FSBStatus.FSB_OPEN;
                  },
                  onSwipeLeft: () {
                    value.OpenDrawer();
                    value.drawerStatus = FSBStatus.FSB_CLOSE;
                  },
                  child: drawertest(
                    drawerBackgroundColor: Color(0xff00264d),
                    endDrawer: CustomDrawer(),
                    screenContents: BasicSliverAppBar(), // Your Screen Widget
                    status: value.drawerStatus,
                  ),
                ),
          ),
        )
    );
  }

  Widget BasicSliverAppBar() {
    DateTime lastPressed ;
    return WillPopScope(
      onWillPop: () async {
        final now = DateTime.now();
        final maxDuration = Duration(seconds: 1);
        final isWarning = lastPressed == null ||
            now.difference(lastPressed) > maxDuration;

        if (isWarning) {
          lastPressed = DateTime.now();

          final snackBar = SnackBar(
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
            backgroundColor: Colors.grey[600].withOpacity(0.7),

            width: 200,
            content: Container(child: Text('انقر مرتين للخروج', textAlign: TextAlign.center,)),
            duration: maxDuration,
          );

        final a7a =   ScaffoldMessenger.of(context)
            ..removeCurrentSnackBar()
            ..showSnackBar(snackBar);
          return false;
        } else {
          return true;
        }
      },
      child: Container(
        child: ScrollConfiguration(
          behavior: ScrollBehavior(),
          
          child: GlowingOverscrollIndicator(
            axisDirection: AxisDirection.down,
            color: Theme.of(context).accentColor,
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  brightness: Brightness.light,
                  pinned: true,
                  excludeHeaderSemantics: false,
                  backgroundColor: Theme
                      .of(context)
                      .backgroundColor,
                  expandedHeight: 150,
                  floating: false,
                  flexibleSpace: FlexibleSpaceBar(
                    title: Selector<SearchProvider, bool>(
                      selector: (context, value) => value.isnamedchoosed,
                      builder: (context, value, child) {
                        return value
                            ? Text("الكتّاب",
                            style: TextStyle(
                              color: Theme
                                  .of(context)
                                  .focusColor,
                              fontFamily: "Lalezar",
                            ))
                            : Text("الاقسام",
                            style: TextStyle(
                              color: Theme
                                  .of(context)
                                  .focusColor,
                              fontFamily: "Lalezar",
                            ));
                      },
                    ),
                    centerTitle: true,
                  ),
                  //title: Text('My App Bar'),
                  leading: Consumer<SortProvider>(
                    builder: (context, value, child) {
                      return IconButton(
                        icon: value.opendrawer
                            ? Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Theme
                              .of(context)
                              .accentColor,
                        )
                            : Icon(
                          Icons.arrow_back_ios_rounded,
                          color: Theme
                              .of(context)
                              .accentColor,
                        ),
                        onPressed: () {
                          value.OpenDrawer();
                          value.drawerStatus =
                          value.drawerStatus == FSBStatus.FSB_OPEN
                              ? FSBStatus.FSB_CLOSE
                              : FSBStatus.FSB_OPEN;
                          value.Refresh();
                        },
                      );
                    },
                  ),
                  actions: [
                    Container(
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
                              child: Consumer<SearchProvider>(
                                builder: (context, value, child) {
                                  return TextField(
                                    cursorColor: Theme
                                        .of(context)
                                        .backgroundColor,
                                    textDirection: TextDirection.rtl,
                                    controller: value.wlo,
                                    onChanged: (wal) {
                                      value.search(wal);
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
                              child: Consumer<SearchProvider>(
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
                                      value.Refresh();
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
                    ),
                    Consumer<SearchProvider>(
                        builder: (context, value, child) =>
                            Container(
                              child: IconButton(
                                  splashRadius: 10,
                                  icon: Icon(Icons.swap_horiz_outlined,
                                      color: Theme
                                          .of(context)
                                          .accentColor),
                                  onPressed: () async {
                                    await value.Swipeisnamedchoosed();
                                    Future.delayed(Duration(milliseconds: 100), () {
                                      value.Swipea7a();
                                      value.Swipea7o();
                                      value.swapgrid();
                                    });

                                  }),
                            )),
                    SizedBox(width: 12),
                  ],
                ),
                SliverToBoxAdapter(
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: Container(
                      color: Theme
                          .of(context)
                          .backgroundColor,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xff00264d),
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20),
                            )),
                        child: Consumer2<SearchProvider, MainLists>(
                          builder: (context, swap, set, child) =>
                              Column(
                                  children: [
                                 Container(
                                            margin: EdgeInsets.all(0),
                                            height: 150,
                                            key: swap.a7o ? null : UniqueKey(),
                                            child: Card(
                                                elevation: 10,
                                                color: Color(0xff003366),
                                                shape: BeveledRectangleBorder(
                                                  borderRadius: BorderRadius.circular(
                                                      20),
                                                ),
                                                margin: EdgeInsets.only(top: 30,
                                                    bottom: 10,
                                                    left: 10,
                                                    right: 10),
                                                child: Material(
                                                    borderRadius: BorderRadius
                                                        .circular(20),
                                                    color: Color(0xff003366),
                                                    child: InkWell(
                                                      onTap: () {
                                                        set.finalquote = set.mainlist;
                                                        Navigator.of(context).push(
                                                          PageRouteBuilder(
                                                            fullscreenDialog: true,
                                                            reverseTransitionDuration:
                                                            Duration(
                                                                milliseconds: 500),
                                                            transitionDuration:
                                                            Duration(
                                                                milliseconds: 500),
                                                            pageBuilder: (
                                                                BuildContext context,
                                                                Animation<
                                                                    double> animation,
                                                                Animation<double>
                                                                secondaryAnimation) {
                                                              return page2(
                                                                  listview: HomeSectionsClass(
                                                                    text: "كل الحكم",
                                                                    tag: "bbob",
                                                                  )
                                                              );
                                                            },
                                                            transitionsBuilder:
                                                                (BuildContext context,
                                                                Animation<
                                                                    double> animation,
                                                                Animation<double>
                                                                secondaryAnimation,
                                                                Widget child) {
                                                              return FadeTransition(
                                                                opacity: animation,
                                                                // CurvedAnimation(parent: animation, curve: Curves.elasticInOut),
                                                                child: child,
                                                              );
                                                            },
                                                          ),
                                                        );
                                                      },
                                                      borderRadius: BorderRadius
                                                          .circular(20),
                                                      child: Stack(
                                                        children: [
                                                          Center(
                                                            child: Text("كل الحكم",
                                                                style: TextStyle(
                                                                    fontSize: 25,
                                                                    fontFamily: "wall")
                                                            ),
                                                          ),
                                                    Positioned(
                                                      left: 5,
                                                      bottom: 0,
                                                      child: Container(
                                                        height: 20,
                                                        width: 40,
                                                        color: Colors
                                                            .transparent,

                                                        child: Text(
                                                          set.mainlist.length
                                                              .toString(),
                                                          style: TextStyle(
                                                              color: Theme
                                                                  .of(context)
                                                                  .accentColor,
                                                              fontSize: 15
                                                          ),),
                                                        )
                                                        )
                                                        ],
                                                      ),
                                                    )))
                                 ),
                                    GridView.builder(
                                      primary: false,
                                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount:  2,
                                        mainAxisSpacing: 0,
                                        childAspectRatio: 1.8,
                                        crossAxisSpacing: 0
                                      ),
                                      shrinkWrap: true,
                                      itemCount: swap.isnamedchoosed
                                          ? swap.isnamed.length
                                          : swap.isparts.length,
                                      itemBuilder: (context, index) =>
                                          AnimatedSwitcher(
                                              duration: Duration(milliseconds: 500),
                                              child: swap.isnamedchoosed
                                                  ? Container(
                                                margin: EdgeInsets.all(0),
                                                height: 150,
                                                key: swap.a7a ? UniqueKey() : null,
                                                child: Card(
                                                  elevation: 10,
                                                  color: Color(0xff003366),
                                                  shape: BeveledRectangleBorder(
                                                    borderRadius: BorderRadius
                                                        .circular(20),
                                                  ),
                                                  margin: EdgeInsets.all(10),
                                                  child: Material(
                                                    borderRadius: BorderRadius
                                                        .circular(20),
                                                    color: Color(0xff003366),
                                                    child: InkWell(
                                                        borderRadius: BorderRadius
                                                            .circular(20),
                                                        child: Stack(children: [
                                                          Center(
                                                            child: Hero(
                                                              tag: "text" +
                                                                  "${swap
                                                                      .isnamed[index]
                                                                      .tag}",
                                                              child: Material(
                                                                color: Colors
                                                                    .transparent,
                                                                child: Container(
                                                                  color: Colors
                                                                      .transparent,
                                                                  child: AutoSizeText(
                                                                    "${swap
                                                                        .isnamed[index]
                                                                        .text}",
                                                                    maxLines: 1,
                                                                    maxFontSize: 20,
                                                                    style: TextStyle(
                                                                        fontSize: 25,
                                                                        fontFamily: "wall"),),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            left: 10,
                                                            bottom: 0,
                                                            child: Container(
                                                              height: 20,
                                                              width: 40,
                                                              color: Colors
                                                                  .transparent,

                                                              child: Text(
                                                                set.names()[index]
                                                                    .toString(),
                                                                textAlign: TextAlign.left,
                                                                style: TextStyle(
                                                                    color: Theme
                                                                        .of(context)
                                                                        .accentColor,
                                                                    fontSize: 12
                                                                ),),
                                                            ),
                                                          ),
                                                        ]),
                                                        onTap: () async {
                                                          switch (swap.isnamed[index]
                                                              .text) {
                                                            case "مصطفى محمود":
                                                              set.finalquote =
                                                                  set.mostafamahmoud;
                                                              break;
                                                            case "أفلاطون":
                                                              set.finalquote =
                                                                  set.aflaton;
                                                              break;
                                                            case "إبراهيم الفقي":
                                                              set.finalquote =
                                                                  set.ibrahimlfiki;
                                                              break;
                                                            case "محمود درويش":
                                                              set.finalquote =
                                                                  set.mahmouddarwis;
                                                              break;
                                                            case "وليم شكسبير":
                                                              set.finalquote =
                                                                  set.williamshikspir;
                                                              break;
                                                            case "باولو كويلو":
                                                              set.finalquote =
                                                                  set.pawlokwilo;
                                                              break;
                                                            case "مصطفى الرافعي":
                                                              set.finalquote =
                                                                  set.mostafalrafei;
                                                              break;
                                                            case "احلام مستغانمي":
                                                              set.finalquote =
                                                                  set.a7lammost8anmi;
                                                              break;
                                                            case "نزار قباني":
                                                              set.finalquote =
                                                                  set.nizarkbarni;
                                                              break;
                                                            case "نيلسون مانديلا":
                                                              set.finalquote =
                                                                  set.nilsonmandila;
                                                              break;
                                                            case "فريدريك نيتشة":
                                                              set.finalquote =
                                                                  set.fridriknicha;
                                                              break;
                                                            case "مارك توبن":
                                                              set.finalquote =
                                                                  set.marktoben;
                                                              break;
                                                            case "نابليون بونابرت":
                                                              set.finalquote =
                                                                  set.naplyonponapart;
                                                              break;
                                                            case "مصطفى لطفي المنفلوطي":
                                                              set.finalquote =
                                                                  set.mostafalotfilmnfloti;
                                                              break;
                                                            case "ألبرت أينشتاين":
                                                              set.finalquote =
                                                                  set.alberteinstein;
                                                              break;
                                                            case "نجيب محفوظ":
                                                              set.finalquote =
                                                                  set.najibma7foz;
                                                              break;
                                                            case "شيرلوك هولمز":
                                                              set.finalquote =
                                                                  set.sherlokholmz;
                                                              break;
                                                            case "أحمد خالد توفيق":
                                                              set.finalquote =
                                                                  set.ahmadkhalidtawfik;
                                                              break;
                                                            case "غسان كنفاني":
                                                              set.finalquote =
                                                                  set.ghassankanafani;
                                                              break;
                                                          }

                                                          Navigator.of(context)
                                                              .push(PageRouteBuilder(
                                                            fullscreenDialog: true,
                                                            reverseTransitionDuration:
                                                            Duration(
                                                                milliseconds: 500),
                                                            transitionDuration:
                                                            Duration(
                                                                milliseconds: 500),
                                                            pageBuilder: (
                                                                BuildContext context,
                                                                Animation<
                                                                    double> animation,
                                                                Animation<double>
                                                                secondaryAnimation) {
                                                              return page2(
                                                                listview: HomeSectionsClass(
                                                                    text: swap
                                                                        .isnamed[index]
                                                                        .text,
                                                                    tag: swap
                                                                        .isnamed[index]
                                                                        .tag),
                                                              );
                                                            },
                                                            transitionsBuilder:
                                                                (BuildContext context,
                                                                Animation<
                                                                    double> animation,
                                                                Animation<double>
                                                                secondaryAnimation,
                                                                Widget child) {
                                                              return FadeTransition(
                                                                opacity: animation,
                                                                // CurvedAnimation(parent: animation, curve: Curves.elasticInOut),
                                                                child: child,
                                                              );
                                                            },
                                                          ));
                                                        }),
                                                  ),
                                                ),
                                              )
                                                  : Container(
                                                key: swap.a7o ? null : UniqueKey(),
                                                height: 190,
                                                child: Card(
                                                  margin: EdgeInsets.all(10),
                                                  elevation: 10,
                                                  color: Color(0xff003366),
                                                  shape: BeveledRectangleBorder(
                                                    borderRadius: BorderRadius
                                                        .circular(20),
                                                  ),
                                                  child: Material(
                                                    borderRadius: BorderRadius
                                                        .circular(20),
                                                    color: Color(0xff003366),
                                                    child: InkWell(
                                                        borderRadius: BorderRadius
                                                            .circular(20),
                                                        child: Stack(children: [
                                                          Hero(
                                                            tag: "background" + swap.isparts[index].tag,
                                                              child: Container()),
                                                          Center(
                                                            child: Hero(
                                                              tag: "text" +
                                                                  "${swap
                                                                      .isparts[index]
                                                                      .tag}",
                                                              child: Material(
                                                                color: Colors
                                                                    .transparent,
                                                                child: Container(
                                                                  color: Colors
                                                                      .transparent,
                                                                  child: AutoSizeText(
                                                                    "${swap
                                                                        .isparts[index]
                                                                        .text}",
                                                                    maxLines: 1,
                                                                    style: TextStyle(
                                                                        fontSize: 25,
                                                                        fontFamily: "wall"),),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            left: 10,
                                                            bottom: 5,
                                                            child: Container(
                                                              height: 20,
                                                              width: 40,
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              color: Colors
                                                                  .transparent,
                                                              child: Text(
                                                                set.parts()[index]
                                                                    .toString(),
                                                                style: TextStyle(
                                                                    color: Theme
                                                                        .of(context)
                                                                        .accentColor,
                                                                    fontSize: 15
                                                                ),),
                                                            ),
                                                          ),
                                                        ]),
                                                        onTap: () async {
                                                          switch (swap.isparts[index]
                                                              .text) {
                                                            case "الوقت":
                                                              set.finalquote =
                                                                  set.waktlist;
                                                              break;
                                                            case "الحياة":
                                                              set.finalquote =
                                                                  set.hyatlis;
                                                              break;
                                                            case "العمر":
                                                              set.finalquote =
                                                                  set.l3mrlist;
                                                              break;
                                                            case "الناس":
                                                              set.finalquote =
                                                                  set.lnaslist;
                                                              break;
                                                            case "الحب":
                                                              set.finalquote =
                                                                  set.l7oblist;
                                                              break;
                                                            case "مضحك":
                                                              set.finalquote =
                                                                  set.md7ekliat;
                                                              break;
                                                            case "العلم":
                                                              set.finalquote =
                                                                  set.l3lmlist;
                                                              break;
                                                            case "العمل":
                                                              set.finalquote =
                                                                  set.l3mllist;
                                                              break;
                                                            case "الموت":
                                                              set.finalquote =
                                                                  set.lmawtlist;
                                                              break;
                                                            case "القلب":
                                                              set.finalquote =
                                                                  set.lklblist;
                                                              break;
                                                            case "الدنيا":
                                                              set.finalquote =
                                                                  set.ldnyalist;
                                                              break;
                                                            case "الحرب":
                                                              set.finalquote =
                                                                  set.l7arblist;
                                                              break;
                                                            case "المال":
                                                              set.finalquote =
                                                                  set.lmallist;
                                                              break;
                                                            case "الصديق":
                                                              set.finalquote =
                                                                  set.lsdiklist;
                                                              break;
                                                            case "العقل":
                                                              set.finalquote =
                                                                  set.l3kllist;
                                                              break;
                                                            case "النجاح":
                                                              set.finalquote =
                                                                  set.lnja7list;
                                                              break;
                                                            case "الوطن":
                                                              set.finalquote =
                                                                  set.lwtanlist;
                                                              break;
                                                            case "الخيانة":
                                                              set.finalquote =
                                                                  set.l5yanalist;
                                                              break;
                                                            case "التسامح":
                                                              set.finalquote =
                                                                  set.ltsamo7list;
                                                              break;
                                                            case "الحقيقة":
                                                              set.finalquote =
                                                                  set.l7aklist;
                                                              break;
                                                            case "الجهل":
                                                              set.finalquote =
                                                                  set.ljahllist;
                                                              break;
                                                            case "السياسة":
                                                              set.finalquote =
                                                                  set.lsyasalist;
                                                              break;
                                                            case "القوة":
                                                              set.finalquote =
                                                                  set.lkwalist;
                                                              break;
                                                            case "الكذب":
                                                              set.finalquote =
                                                                  set.lkzeblist;
                                                              break;
                                                            case "العمر":
                                                              set.finalquote =
                                                                  set.l3mllist;
                                                              break;
                                                            case "الحزن":
                                                              set.finalquote =
                                                                  set.l7znlist;
                                                              break;
                                                            case "الصبر":
                                                              set.finalquote =
                                                                  set.lsberlist;
                                                              break;
                                                            case "السعادة":
                                                              set.finalquote =
                                                                  set.ls3adalist;
                                                              break;
                                                            case "الأم":
                                                              set.finalquote =
                                                                  set.l2mlist;
                                                              break;
                                                            case "الأمل":
                                                              set.finalquote =
                                                                  set.l2mllist;
                                                              break;
                                                            case "الفقر":
                                                              set.finalquote =
                                                                  set.lfkrlist;
                                                              break;
                                                            case "الأب":
                                                              set.finalquote =
                                                                  set.l2blist;
                                                              break;
                                                            case "الصمت":
                                                              set.finalquote =
                                                                  set.lsamtlist;
                                                              break;
                                                            case "الغباء":
                                                              set.finalquote =
                                                                  set.l8ba2list;
                                                              break;
                                                            case "الحرية":
                                                              set.finalquote =
                                                                  set.l7ryalist;
                                                              break;
                                                            case "الثقة":
                                                              set.finalquote =
                                                                  set.lsikalist;
                                                              break;
                                                            case "الغرور":
                                                              set.finalquote =
                                                                  set.l8rorlist;
                                                              break;
                                                            case "الفشل":
                                                              set.finalquote =
                                                                  set.lfshallist;
                                                              break;
                                                            case "الفلسفة":
                                                              set.finalquote =
                                                                  set.lflsfalist;
                                                              break;
                                                            case "الماضي":
                                                              set.finalquote =
                                                                  set.lmadilist;
                                                              break;
                                                            case "الاخرين":
                                                              set.finalquote =
                                                                  set.lnaslist;
                                                              break;
                                                          }
                                                          Navigator.of(context).push(
                                                            PageRouteBuilder(
                                                              fullscreenDialog: true,
                                                              reverseTransitionDuration:
                                                              Duration(
                                                                  milliseconds: 500),
                                                              transitionDuration:
                                                              Duration(
                                                                  milliseconds: 500),
                                                              pageBuilder: (
                                                                  BuildContext context,
                                                                  Animation<
                                                                      double> animation,
                                                                  Animation<double>
                                                                  secondaryAnimation) {
                                                                return page2(
                                                                  listview: HomeSectionsClass(
                                                                      text:
                                                                      swap
                                                                          .isparts[index]
                                                                          .text,
                                                                      tag: swap
                                                                          .isparts[index]
                                                                          .tag),
                                                                );
                                                              },
                                                              transitionsBuilder:
                                                                  (
                                                                  BuildContext context,
                                                                  Animation<
                                                                      double> animation,
                                                                  Animation<double>
                                                                  secondaryAnimation,
                                                                  Widget child) {
                                                                return FadeTransition(
                                                                  opacity: animation,
                                                                  // CurvedAnimation(parent: animation, curve: Curves.elasticInOut),
                                                                  child: child,
                                                                );
                                                              },
                                                            ),
                                                          );
                                                        }),
                                                  ),
                                                ),
                                              ),
                                              transitionBuilder:
                                                  (Widget child,
                                                  Animation<double> animation) {
                                                Widget fadeChild;
                                                // current page includes an additional scale transition
                                                fadeChild = ScaleTransition(
                                                  scale: Tween<double>(
                                                      begin: 0.95, end: 1)
                                                      .animate(animation),
                                                  child: child,
                                                );

                                                return FadeTransition(
                                                  opacity: animation,
                                                  child: fadeChild,
                                                );
                                              }),
                                    ),
                                  ]
                              ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//showBottomSheet()
