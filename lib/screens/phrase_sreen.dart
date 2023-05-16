import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toku/components/phrase_component.dart';

import '../models/models.dart';

class Phrase extends StatelessWidget {

  final List <Models> phraseModel=[
    Models(jpName:'Anata wa kite imasu',enName:'are_you_coming',sound:'sounds/phrases/are_you_coming.wav' ),
    Models(jpName:'Kodoku suru koto o wasurenaide kudasai',enName:'dont_forget_to_subscribe',sound:'sounds/phrases/dont_forget_to_subscribe.wav' ),
    Models(jpName:'Go kibun wa ikagadesu ka',enName:'how are you feeling',sound: 'sounds/phrases/how_are_you_feeling.wav' ),
    Models(jpName:'Watashi wa anime ga daisukidesu',enName:'i love anime',  sound: 'sounds/phrases/i_love_anime.wav' ),
    Models(jpName:'Watashi wa puroguramingu ga daisukidesu',enName:'i love programming',  sound: 'sounds/phrases/i_love_programming.wav' ),
    Models(jpName:'Puroguramingu wa kantandesu',enName:'programming is easy',    sound: 'sounds/phrases/programming_is_easy.wav' ),
    Models(jpName:'Namae wa nandesu ka',enName:'what is your name',sound: 'sounds/phrases/what_is_your_name.wav'  ),
    Models(jpName:'Doko ni iku no',enName:'where are you going',sound: 'sounds/phrases/where_are_you_going.wav'  ),
    Models(jpName:'Hai, kimasu',enName:'yes im coming',sound: 'sounds/phrases/yes_im_coming.wav'  ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('phrases'),),
        body:ListView.builder(

          itemBuilder: (context,index)
          {
            return phraseComp(number: phraseModel[index],);
          },
          itemCount: phraseModel.length,

        )
    );;
  }
}
