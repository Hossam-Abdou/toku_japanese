import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  String? text;
  Color? color;
  Function()? navigate;

  Category({this.text, this.color,this.navigate});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: navigate,
      child: Container(
          padding: EdgeInsets.all(16) ,
          color:color,
          height: 65,
          alignment: Alignment.centerLeft,
          child: Text('$text',
            style: TextStyle(fontSize: 20,color: Colors.white),)
      ),
    );
  }
}