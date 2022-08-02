import 'package:akwal_w7ikam_lkotab/database/class.dart';
import 'package:akwal_w7ikam_lkotab/database/functions.dart';
import 'package:akwal_w7ikam_lkotab/dialog%20class.dart';
import 'package:akwal_w7ikam_lkotab/homepagequotes/drawer.dart';
import 'package:akwal_w7ikam_lkotab/homepagequotes/search%20provider.dart';
import 'package:akwal_w7ikam_lkotab/homepagequotes/sort%20provider.dart';
import 'package:akwal_w7ikam_lkotab/quotes_page/provider.dart';
import 'package:akwal_w7ikam_lkotab/savedquoterpage/detailall.dart';
import 'package:akwal_w7ikam_lkotab/savedquoterpage/details.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swipedetector/swipedetector.dart';
import 'package:akwal_w7ikam_lkotab/allquotes/allquotes page.dart';
class Saved extends StatefulWidget {

  @override
  _SavedState createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  var boardtitle ;
  @override
  FSBStatus drawerStatus;
  var savelist;
  var savequote;
  var boardname = TextEditingController();
  @override
  void initState() {
    super.initState();
    savelist = Functions2() ;
    savequote = Functions();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Consumer<SortProvider>(
          builder: (context, value, child) => SwipeDetector(
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
              screenContents: Savedhome(), // Your Screen Widget
              status: value.drawerStatus,
            ),
          ),
        ),
      ),
    );
  }

      Widget Savedhome() {
      return Container(
          child: CustomScrollView(
              physics: ClampingScrollPhysics(),
              slivers: [
                SliverAppBar(
                  pinned: true,
                  excludeHeaderSemantics: false,
                  backgroundColor: Theme
                      .of(context)
                      .backgroundColor,
                  expandedHeight: 150,
                  centerTitle: true,
                  floating: false,
                  flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                      title: Text("المفضلة" ,  style: TextStyle(fontFamily:"Lalezar", color: Theme.of(context).errorColor),)
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
                ),
                gridview() ,

              ]
          )
      );
    }

    Widget gridview(){
    var wal ;
    return SliverToBoxAdapter(
      child: Consumer<SearchProvider>(
        builder: (context , value, child)=>
            Container(
              color: Theme.of(context).backgroundColor,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xff00264d),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  )
                ),
                child: Column(
                  children: [
                 Container(
                   height: 150,
                margin: EdgeInsets.all(0),
          child: Card(
                shadowColor: Colors.black,
                margin: EdgeInsets.all(20),
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius:
                    BorderRadius.circular(20)),
                elevation: 10,
                color: Color(0xff003366),
                child: Material(
                  color: Color(0xff003366),
                  child: InkWell(
                      onTap: (){
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
                              return DetailSave2("كل المفضلة");
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
                      },
                      child: Stack(children: [
                        Center(
                          child: Container(
                            color: Colors.transparent,
                            child: Hero(
                              tag: "bob",
                              child: Material(
                                color: Colors.transparent,
                                child: Text(
                                  "كل المفضلة" , style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: "wall"),),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 5,
                          bottom: 0,
                          child: Container(
                            height: 20,
                            width: 40,
                            color: Colors.transparent,

                            child: Text("",
                              style: TextStyle(
                                  color: Color(0xffffbaa2) ,
                                  fontSize: 15
                              ),),
                          ),
                        ),
                      ])
                  ),
                ),
          )
      ),
                    Consumer<refresh>(
                      builder: (context , value , child)=>
                          FutureBuilder(
                  future: savelist.allCourses() ,
                  builder: (context , snaoshot){
                  if(snaoshot.hasData){
                    wal = snaoshot.data.length;
                      return   ListView.builder(
                        primary: false,

                        shrinkWrap: true,
                        itemCount: snaoshot.data.length,
                        itemBuilder: (context , index){
                          var dataa = SavedQuote2(snaoshot.data[index]);
                          return   Container(
                              height: 150,
                              margin: EdgeInsets.all(0),
                              child: Card(
                                  shadowColor: Colors.black,
                                  margin: EdgeInsets.all(20),
                                  clipBehavior: Clip.antiAlias,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(20)),
                                  elevation: 10,
                                  color: Color(0xff003366),
                                  child: Material(
                                    color: Color(0xff003366),
                              child: InkWell(

                                  onTap: (){
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
                                          return  detailsave(data: index, title: dataa.title,);
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
                                  },
                                  child: Stack(children: [
                                          Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                              margin: EdgeInsets.all(20),
                                              color: Colors.transparent,
                                              child: Hero(
                                                tag: index.toString(),
                                                child: Material(
                                                  color: Colors.transparent,
                                                  child: AutoSizeText(
                                                    "${dataa.title}" , style: TextStyle(
                                                      fontSize: 25,
                                                      fontFamily: "wall"),
                                                    maxLines: 2,
                                                    textAlign: TextAlign.end,
                                                    minFontSize: 1,
                                                    maxFontSize: 25,
                                                  ),
                                                ),
                                              )
                                              ,
                                            ),
                                          ),
                                    Positioned(
                                      left: 0,
                                      bottom: 0,
                                      child: Row(
                                        children: [
                                          IconButton(
                                            icon: Icon(Icons.delete_forever, color: Colors.red,),
                                            onPressed: (){
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
                                                        child: dialog().contentBox(context , dataa),
                                                      ),
                                                    );
                                                  }
                                              );
                                            },

                                          ),
                                          IconButton(
                                            onPressed: (){
                                              boardname.text = dataa.title;
                                              showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor: Colors
                                                      .transparent,
                                                  context: context,
                                                  builder: (builder) {
                                                    return  folderupdating(dataa);
                                                  }
                                              );
                                            },
                                            icon: Icon(Icons.edit, color: Colors.green,),

                                          )
                                      ]
                                      ),
                                      ),
                                        ])),
                                  )
                              )
                          );
                        },
                      );
                  }
                  return CircularProgressIndicator();
                  },
          ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width:MediaQuery.of(context).size.width/2 - 40,
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          child: IconButton(
                            onPressed: (){
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
                            icon: Icon(Icons.add,color: Colors.green, size: 50, ),
                          ),
                        )
                      ],
                    )
    ]
                ),
              ),
            ),
      ),
    );
    }
  folderupdating(savedquote){
    return  Stack(
      children: [
        Positioned(
          width: MediaQuery.of(context).size.width,
          bottom:  MediaQuery.of(context).viewInsets.bottom,
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
                                          await savelist.Onupdate(savedquotee) ;
                                          await savequote.updatequotes(savedquote.title.toString() , boardname.text.toString());
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
                                      textDirection: TextDirection.rtl,
                                      decoration: InputDecoration(
                                          counterStyle: TextStyle(
                                          )
                                      ),
                                      style: TextStyle(
                                          color: Theme.of(context).errorColor),
                                      cursorColor: Theme.of(context).errorColor,

                                      maxLength: 25,
                                      keyboardType: TextInputType.text,
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

foldernaming(){
  return  Stack(
    children: [
      Positioned(
        width: MediaQuery.of(context).size.width,
        bottom:  MediaQuery.of(context).viewInsets.bottom,
        child:  Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
            ),
            height: 200,
            child: Consumer<refresh>(
              builder: (context , value, child)=>
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
                                        await savelist.createCourse(savedquote) ;
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
                                    decoration: InputDecoration(
                                        counterStyle: TextStyle(
                                        )
                                    ),
                                    style: TextStyle(
                                        color: Theme.of(context).errorColor),
                                    cursorColor: Theme.of(context).errorColor,

                                    maxLength: 25,
                                    keyboardType: TextInputType.text,
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
}
