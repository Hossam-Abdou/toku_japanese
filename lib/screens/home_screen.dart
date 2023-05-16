import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toku/screens/familyMembers_screen.dart';
import 'package:toku/screens/phrase_sreen.dart';
import 'package:toku/screens/colors_screen.dart';

import '../components/home_component.dart';
import 'numbers_screen.dart';

class TokuHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6b4226),
        title: Text('Toku'),
      ),
      body: Column(children: [
        Category(text: 'numbers',color:Color(0xffcaaf7e) ,
            navigate: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)
        {
          return Numbers();
        }
        ));
          }
        ),
        Category(text: 'family members',color:Color(0xffcccccc) , navigate: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)
          {
            return FamilyMembers();
          }
          ));
        }),
        Category(text: 'colors',color:Color(0xff458b00) , navigate: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)
          {
            return ColorsToku();
          }
          ));
        }),
        Category(text: 'phrases',color:Colors.blueGrey , navigate: ()
        {
          Navigator.push(context, MaterialPageRoute(builder: (context)
          {
            return Phrase();
          }
          )
          );
        }
        ),


      ],),
    );
  }
}





