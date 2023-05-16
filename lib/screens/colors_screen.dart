import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/items_component.dart';
import '../models/models.dart';

class ColorsToku extends StatelessWidget {
  final List <Models> colorModel=[
    Models(image:'assets/images/colors/color_black.png',jpName:'Burakku',enName:'blaack',sound: 'sounds/colors/black.wav' ),
    Models(image:'assets/images/colors/color_brown.png',jpName:'Chairo',enName:'brown',sound: 'sounds/colors/brown.wav' ),
    Models(image:'assets/images/colors/color_dusty_yellow.png',jpName:'Hokori',enName:'dusty',sound: 'sounds/colors/dusty_yellow.wav' ),
    Models(image:'assets/images/colors/color_gray.png',jpName:'Gure',enName:'gray',sound: 'sounds/colors/gray.wav' ),
    Models(image:'assets/images/colors/color_green.png',jpName:'Midori',enName:'green',sound: 'sounds/colors/green.wav' ),
    Models(image:'assets/images/colors/color_red.png',jpName:'Aka',enName:'red',sound: 'sounds/colors/red.wav' ),
    Models(image:'assets/images/colors/color_white.png',jpName:'Shiroi',enName:'white',sound: 'sounds/colors/white.wav'  ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('colors'),),
        body:ListView.builder(

          itemBuilder: (context,index)
          {
            return Items(number: colorModel[index],color: Color(0xffcaaf7e),);
          },
          itemCount: colorModel.length,

        )
    );;
  }
}
