import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/models.dart';

class Items extends StatelessWidget {

final Models number;
Color? color;

Items({ required this.number,required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(children: [
        Container(
            color: Colors.white,
            child: Image(image: AssetImage('${number.image}'), )
        ),
        Padding(
          padding: const EdgeInsets.only(left:16.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${number.jpName}',style: TextStyle(fontSize: 18,color: Colors.white),),
              Text('${number.enName}',style: TextStyle(fontSize: 18,color: Colors.white)),
            ],
          ),
        ),
        Spacer(),
        IconButton(onPressed: ()
        {
          AudioPlayer player = AudioPlayer();
//
          player.play(AssetSource('${number.sound}'));

        },
            icon: Icon(Icons.play_arrow,color:Colors.white,size: 28,))


      ],
      ),
    );
  }
}
