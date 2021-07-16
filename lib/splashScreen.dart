import 'package:flutter/material.dart';
import 'package:music_main/size_config.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5) ,(){
      Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xFFDBDBDB),
      body: Center(
        child: Image.asset('assets/images/logo.png',height: SizeConfig.scaleHeight(115),width: SizeConfig.scaleWidth(225)),
      ),
    );
  }
}
