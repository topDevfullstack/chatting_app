import 'package:akwal_w7ikam_lkotab/homepagequotes/search%20provider.dart';
import 'package:akwal_w7ikam_lkotab/homepagequotes/sort%20provider.dart';
import 'package:akwal_w7ikam_lkotab/mainquotes.dart';
import 'package:akwal_w7ikam_lkotab/quotes_page/provider.dart';
import 'package:akwal_w7ikam_lkotab/quotes_page/swichsavedbuttomclass.dart';
import 'package:flutter/material.dart';
import 'themeprovider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:akwal_w7ikam_lkotab/homepagequotes/search provider.dart';
import 'package:akwal_w7ikam_lkotab/homepagequotes/tabbar_sliver_appbar.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences.getInstance().then((prefs) {
    var isDarkTheme = prefs.getBool("darkTheme") ?? false;
     var ismoved = prefs.getBool("ismoved") ?? false;
    return runApp(

    MultiProvider(
        child: MyApp() ,
        providers: [
      //1
      ChangeNotifierProvider<ThemeProvider>(
        create: (BuildContext context) {
          return ThemeProvider(isDarkTheme , ismoved);
        },
      ),
      //2
      ChangeNotifierProvider<SortProvider>(
        create: (BuildContext context) {
          return SortProvider();
        },
      ),
          ChangeNotifierProvider<SearchProvider>(create: (context)=> SearchProvider()),
          ChangeNotifierProvider<MainLists>(create: (context)=> MainLists()),
          ChangeNotifierProvider<Saved>(create: (context)=> Saved()),
          ChangeNotifierProvider<refresh>(create: (context)=> refresh()),


        ])
    );
  });
}


class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider >(
        builder: (context , value , child){
      return  MaterialApp(

        theme: value.getTheme(),
        title: "اقوال وحكم الكتاب",
        home: Home() ,
        debugShowCheckedModeBanner: false,

      );
    });
  }


}