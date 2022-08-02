import 'package:akwal_w7ikam_lkotab/database/functions.dart';
import 'package:akwal_w7ikam_lkotab/quotes_page/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class dialogg {
 var function = Functions();
  contentBox(context, savedquote) {
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
                  color: Theme
                      .of(context)
                      .backgroundColor,
                ),

                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text("حذف", style: TextStyle(color: Theme
                        .of(context)
                        .errorColor, fontSize: 30),), SizedBox(height: 15,),
                    Text(
                      "هل انت متأكد أنك تريد حذف هذا الإقتباس من المفظلة ؟",
                      textAlign: TextAlign.center, style: TextStyle(color: Theme
                        .of(context)
                        .errorColor),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text("إلغاء", style: TextStyle(fontSize: 18,
                                color: Color(0xff003366)),)),
                        Consumer<refresh>(
                          builder: (context, value, child) =>
                              TextButton(
                                  onPressed: () async {
                                    await function.deletequotes(
                                        savedquote.text);
                                    value.refress();
                                    Navigator.of(context).pop();
                                  },
                                  child: Text("حذف", style: TextStyle(
                                      fontSize: 18, color: Colors.red),)),
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

