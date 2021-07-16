import 'package:flutter/material.dart';
import 'package:music_main/BNP.dart';
import 'package:music_main/homeScreen.dart';
import 'package:music_main/splashScreen.dart';
import 'loginScreen.dart';

void main(){
  return runApp(myApp());
}



class myApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //     bottomNavigationBarTheme: BottomNavigationBarThemeData(
      //       selectedItemColor: Color(0xFFFF2D55),
      //       unselectedItemColor: Color(0xFF707070),
      //     ),
      //
      // ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash' : (context) => SplashScreen(),
        '/login' : (context) => LoginScreen(),
        '/BNP' : (context) => BNP(),
        '/home' : (context) => HomeScreen(),
      },
    );
  }
}



