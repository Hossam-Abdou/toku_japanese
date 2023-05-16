import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toku/components/items_component.dart';

import '../models/models.dart';

class Numbers extends StatelessWidget {

  final List <Models> numberModel=[
    Models(image:'assets/images/numbers/number_one.png',jpName:'Ichi',enName:'one',sound: 'sounds/numbers/number_one_sound.mp3' ),
    Models(image:'assets/images/numbers/number_two.png',jpName:'Ni',enName:'two',    sound: 'sounds/numbers/number_two_sound.mp3' ),
    Models(image:'assets/images/numbers/number_three.png',jpName:'San',enName:'three',sound: 'sounds/numbers/number_three_sound.mp3' ),
    Models(image:'assets/images/numbers/number_four.png',jpName:'Shi',enName:'four',  sound: 'sounds/numbers/number_four_sound.mp3' ),
    Models(image:'assets/images/numbers/number_five.png',jpName:'Go',enName:'five',  sound: 'sounds/numbers/number_five_sound.mp3' ),
    Models(image:'assets/images/numbers/number_six.png',jpName:'Roku',enName:'six',    sound: 'sounds/numbers/number_six_sound.mp3' ),
    Models(image:'assets/images/numbers/number_seven.png',jpName:'Sebon',enName:'seven',sound: 'sounds/numbers/number_seven_sound.mp3'  ),
    Models(image:'assets/images/numbers/number_eight.png',jpName:'Hechi',enName:'eight',sound: 'sounds/numbers/number_eight_sound.mp3'  ),
    Models(image:'assets/images/numbers/number_nine.png',jpName:'Kyū',enName:'nine',sound: 'sounds/numbers/number_nine_sound.mp3'  ),
    Models(image:'assets/images/numbers/number_ten.png',jpName:'Jū',enName:'ten',sound: 'sounds/numbers/number_ten_sound.mp3'  ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Numbers'),),
      body:ListView.builder(

          itemBuilder: (context,index)
          {
            return Items(number: numberModel[index],color: Color(0xffcaaf7e),);
          },
          itemCount: numberModel.length,

      )
    );
  }
}

