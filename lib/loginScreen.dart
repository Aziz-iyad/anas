import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:music_main/size_config.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {

  // double start = SizeConfig.scaleWidth(15);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                    margin: EdgeInsets.only(bottom: SizeConfig.scaleHeight(35)),
                    height: SizeConfig.scaleHeight(399),
                    width:double.infinity,
                    child: Image.asset('assets/images/login_shape.png',fit: BoxFit.fill,)),
                Positioned(
                  top: 0,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Image.asset('assets/images/white_logo.png',
                      height: SizeConfig.scaleHeight(115),
                      width: SizeConfig.scaleWidth(225)),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            color : Colors.white,
                            child: Column(
                              children: [
                                Text("Don’t have an account?",
                                  style: TextStyle(fontSize: SizeConfig.scaleTextFont(12),color: Color(0xFF8A9EAD)),),
                                Text("SIGN UP",
                                  style: TextStyle(fontSize: SizeConfig.scaleTextFont(16),color: Color(0xFF1D1A2F)),),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color : Color(0xFFFF2D55),
                            child: Row(
                              children: [
                                Text("SIGN IN",
                                  style: TextStyle(fontSize: SizeConfig.scaleTextFont(16),fontWeight: FontWeight.bold,color: Color(0xFF1A1A1A)),),
                                Icon(Icons.arrow_forward,color: Colors.white,),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: SizeConfig.scaleWidth(38)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Login",
                    style: TextStyle(fontSize: SizeConfig.scaleTextFont(30),fontWeight: FontWeight.bold,color: Color(0xFF1A1A1A)),),
                  SizedBox(
                    height: SizeConfig.scaleHeight(15),
                  ),
                  Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor ",
                    style: TextStyle(fontSize: SizeConfig.scaleTextFont(12),color: Color(0xFF1A1A1A)),),
                  SizedBox(
                    height: SizeConfig.scaleHeight(35),
                  ),
                  TextField(
                    cursorColor: Color(0xFFFF2D55),
                    style: TextStyle(fontSize: SizeConfig.scaleTextFont(16),color: Color(0xFF1A1A1A)),
                    decoration: InputDecoration(
                      hintText: "Username",
                      hintStyle: TextStyle(fontSize: SizeConfig.scaleTextFont(14),color: Color(0xFF707070)),
                      prefixIcon: Icon(Icons.perm_identity_sharp,color: Color(0xFF707070)),
                      // border: InputBorder.none,
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.scaleHeight(20),
                  ),
                  TextField(
                    cursorColor: Color(0xFFFF2D55),
                    obscureText: true,
                    style: TextStyle(fontSize: SizeConfig.scaleTextFont(16),color: Color(0xFF1A1A1A)),
                    decoration: InputDecoration(
                      hintText: "password",
                      hintStyle: TextStyle(fontSize: SizeConfig.scaleTextFont(14),color: Color(0xFF707070)),
                      prefixIcon: Icon(Icons.lock_outline_rounded,color: Color(0xFF707070)),
                      // border: InputBorder.none,
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.scaleHeight(20),
                  ),
                  Container(
                    width: double.infinity,
                    alignment: Alignment.centerRight,
                    child: Text("Forgot Password?",textAlign: TextAlign.end,
                      style: TextStyle(fontSize: SizeConfig.scaleTextFont(12),color: Color(0xFF1D1A2F)),),
                  ),
                  SizedBox(
                    height: SizeConfig.scaleHeight(45),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0xFF8A9EAD),
            ),
          ],
        ),
        width: double.infinity,
        height: SizeConfig.scaleHeight(72),
        child: Row(
          children: [
            Expanded(
              child: Container(
                color : Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don’t have an account?",
                      style: TextStyle(fontSize: SizeConfig.scaleTextFont(12),color: Color(0xFF8A9EAD)),),
                    Text("SIGN UP",
                      style: TextStyle(fontSize: SizeConfig.scaleTextFont(16),color: Color(0xFF1D1A2F)),),
                  ],
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: (){
                  Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
                },
                child: Container(
                  height: SizeConfig.scaleHeight(72),
                  color : Color(0xFFFF2D55),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("SIGN IN  ",
                        style: TextStyle(fontSize: SizeConfig.scaleTextFont(16),fontWeight: FontWeight.bold,color: Colors.white),),
                      Icon(Icons.arrow_forward,color: Colors.white,),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}



