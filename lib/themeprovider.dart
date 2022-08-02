import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData selectedTheme;
  Typography defaultTypography;
  SharedPreferences prefs;
  SharedPreferences prefss;
  bool ismoved ;
  bool isdark = false  ;
get isdarkk => isdark ;



  ThemeData dark = ThemeData.dark().copyWith(
      accentColor: Color(0xffd4b47d),
      errorColor: Colors.white,

      focusColor: Colors.white,
      backgroundColor: Colors.grey[900],

      textTheme: TextTheme(
          button: TextStyle(

              fontSize: 30,
              color: Colors.black ))
  );


  ThemeData light = ThemeData.light().copyWith(
      accentColor: Color(0xffd4b47d),
     errorColor: Colors.black,
      focusColor: Colors.grey[900],
      backgroundColor: Colors.white,
      textTheme: TextTheme(
          button: TextStyle(

              fontSize: 30,
              color: Colors.white
          ))
  );

  ThemeProvider([bool darkThemeOn , ismoveed ]) {
    isdark = darkThemeOn;
    selectedTheme = darkThemeOn ? dark : light;
   this.ismoved = ismoveed ;
  }

  Future<void> swapTheme() async {
    prefs = await SharedPreferences.getInstance() ;

    if (selectedTheme == dark) {
      selectedTheme = light;
      await prefs.setBool("darkTheme", false);
    } else {
      selectedTheme = dark;

      await prefs.setBool("darkTheme", true);
    }

    prefss = await SharedPreferences.getInstance() ;
    isdark = prefss.getBool("darkTheme") ;
    notifyListeners();
  }
  ThemeData getTheme() => selectedTheme;
}
