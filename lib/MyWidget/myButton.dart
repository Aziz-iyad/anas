

import 'package:flutter/material.dart';

import '../size_config.dart';

class MyButton extends StatelessWidget {

  final double height ;
  final Color color ;
  final Color text_border_color ;
  final double text_size ;
  final String text ;
  final Function onTap;


  MyButton({@required this.height, @required this.color, @required this.text_border_color, @required this.text_size,@required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: SizeConfig.scaleHeight(height),
        width: double.infinity,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          border: Border.all(color: text_border_color),
          color: color,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Text(text, style: TextStyle(fontSize: SizeConfig.scaleTextFont(text_size), color: text_border_color)),
      ),
    );
  }
}