import 'package:akwal_w7ikam_lkotab/database/class.dart';
import 'package:akwal_w7ikam_lkotab/database/functions.dart';
import 'package:akwal_w7ikam_lkotab/mainquotes.dart';
import 'package:akwal_w7ikam_lkotab/quotes_page/provider.dart';
import 'package:akwal_w7ikam_lkotab/savedquoterpage/dialog.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:share/share.dart';
import 'package:shared_preferences/shared_preferences.dart';

final buckt = PageStorageBucket();
class DetailSave2 extends StatefulWidget {
  var data ;
  DetailSave2(this.data);
  @override
  _DetailSave2State createState() => _DetailSave2State();
}

class _DetailSave2State extends State<DetailSave2> {
  var function ;
  var dataa;
  var wal = false ;
  var board;
  ScrollController  loo ;
  @override
  void initState() {
    super.initState();
    dataa = widget.data;
    function = Functions();
    board = Functions2();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Theme.of(context).errorColor,),
              onPressed: (){
                Navigator.of(context).pop();
              },
            ),
            centerTitle: true,
            title: Hero(
              tag: "bob",
              child: Material(
                color: Colors.transparent,
                  child: Text("كل المفضلة" , style: TextStyle(color: Theme.of(context).errorColor),)),
            ),
            backgroundColor: Theme.of(context).backgroundColor,
            actions: [
              Consumer<MainLists>(
                builder: (context, value, child) =>
                           IconButton(
                              icon: Icon(Icons.delete_forever , color: Colors.red,),
                              onPressed: ()  {
                                wal ? showDialog(
                                    context: context,
                                    builder: (context) {
                                      return Directionality(
                                        textDirection: TextDirection.rtl,
                                        child: Dialog(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          elevation: 0,
                                          backgroundColor: Colors.transparent,
                                          child: contentBox(context),
                                        ),
                                      );
                                    }
                                ): null;
                        }
                    ),
              )
            ],
          ),
          body:
          PageStorage(
            bucket: buckt,
            child: Consumer<MainLists>(
              builder: (context , value, child)=>
               FutureBuilder(
                  future: function.t3rib2(),
                  builder: (context , snapshot){
                    if(snapshot.hasData){
                      return    ListView.builder(
                        itemCount:snapshot.data.length,
                        shrinkWrap: true,
                        key: PageStorageKey("cwaiducoeoicowoidxoq2293248959329p93chphsddSAnwde2fjdeof3f43"),
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context , index){
                          wal = true ;
                          return   Container(
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: Color(0xff003366),
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomRight: Radius.circular(30) ),
                              ),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${snapshot.data[index].text}",style: TextStyle( fontSize:  value.fontsize,color: Colors.white,fontFamily: "writingfont")),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        snapshot.data[index].writer , style: TextStyle( fontSize:  value.fontsize, color: Theme.of(context).accentColor,fontFamily: "writingfont"),),
                                    ),
                                    Divider(color: Colors.white,),
                                    Row(
                                      children: [
                                        IconButton(
                                          icon: Icon( Icons.forward_outlined,color: Theme.of(context).accentColor, textDirection: TextDirection.ltr,),
                                          onPressed: (){
                                            showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor: Colors
                                                    .transparent,
                                                context: context,
                                                builder: (builder) {
                                                  return content(snapshot.data[index].text , snapshot.data[index].writer, snapshot.data[index].title);
                                                }
                                            );
                                          },
                                        ),
                                        IconButton(
                                          onPressed: ()async{
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
                                                    child: dialogg().contentBox(context,
                                                        snapshot.data[index]),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                          icon: Icon(Icons.delete_forever, color: Colors.red,),

                                        ),
                                        IconButton(
                                          alignment: Alignment.centerLeft,
                                          tooltip: "مشاركة",
                                          icon: Icon(Icons.share_rounded,
                                            color: Theme
                                                .of(context)
                                                .accentColor,),
                                          onPressed: () {
                                            Share.share("""❞${snapshot.data[index].text}❝
-${snapshot.data[index].writer}""");
                                          },
                                        ),
                                      ],
                                    ),
                                  ]
                              )
                          );
                        },
                      );
                    }
                    if(snapshot.data == null){
                      Center(
                        child: Text("no data"),
                      );
                    }
                    return Center(
                      child: CircularProgressIndicator(),
                    ) ;
                  }
              ),
            ),
          ),
        ),
      ),
    );
  }
  content(textt , writerr , titlel){
    return  Container(
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
                        child: Consumer<refresh>(
                          builder: (context , value , child)=>
                              ListView(
                                  children: [
                                    Container(
                                      child: FutureBuilder(
                                        future: board.allCourses(),
                                        builder: (context, snapshot){
                                          if(snapshot.hasData){
                                            return  ListView.builder(
                                              primary: false,
                                              shrinkWrap: true,
                                              itemCount: snapshot.data.length,
                                              itemBuilder: (context , indexx){
                                                var wal = SavedQuote2(snapshot.data[indexx]);
                                                return Column(
                                                    children: [
                                                      Theme(
                                                        data: ThemeData.light().copyWith(splashColor: Color(0xff003366),),
                                                        child: Material(
                                                          color: Theme.of(context).backgroundColor,
                                                          child: ListTile(
                                                              title:    Text("${wal.title}" , style: TextStyle(  color: Theme.of(context).errorColor),),
                                                              leading: Icon(Icons.folder_open , color: Theme.of(context).accentColor,),
                                                              trailing: Icon(Icons.forward_outlined , color: Color(0xff003366),) ,
                                                              onTap: ()async{
                                                                var savedquotee = SavedQuote({"text" : textt , "writer"  :writerr, "title" : wal.title  });
                                                                await function.createCourse(savedquotee) ;
                                                                value.refress();
                                                                Navigator.of(context).pop();
                                                              }
                                                          ),
                                                        ),
                                                      ),
                                                      Divider(
                                                        color: Color(0xff003366),
                                                      ),
                                                    ]
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
  contentBox(context ){
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
                    Text("حذف المحتوى" , style: TextStyle(color: Theme.of(context).errorColor , fontSize: 30 ,fontFamily: "Lalezar"),),              SizedBox(height: 15,),
                    Text("هل انت متأكد أنك تريد حذف محتوى هذا المجلد ؟ سيؤدي ذلك لحذف كل محتوى المجلدات." ,textAlign: TextAlign.center, style: TextStyle(color: Theme.of(context).errorColor,fontFamily: "writingfont"),),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: (){
                              Navigator.of(context).pop();
                            },
                            child: Text("إلغاء",style: TextStyle(fontSize: 18 , color: Color(0xff003366)),)),
                        Consumer<refresh>(
                          builder: (context , value , child)=>
                              TextButton(
                                  onPressed: ()async{
                                    await function.deleteallquotes();
                                    wal = false;
                                    value.refress();

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
}
