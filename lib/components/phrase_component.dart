import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/models.dart';
class phraseComp extends StatelessWidget {
    Models? number;
    phraseComp({this.number});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.brown,
      child: Row(children: [

        Padding(
          padding: const EdgeInsets.only(left:16.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width:290,
                  child: Text('${number?.jpName}',style: TextStyle(fontSize: 18,color: Colors.white),overflow:TextOverflow.ellipsis,maxLines: 2,)),
              Text('${number?.enName}',style: TextStyle(fontSize: 18,color: Colors.white)),
            ],
          ),
        ),
        Spacer(),
        IconButton(onPressed: ()
        {
          AudioPlayer player = AudioPlayer();

          player.play(AssetSource('${number?.sound}'));

        },
            icon: Icon(Icons.play_arrow,color:Colors.white,size: 28,))
      ],
      ),
    );
  }
}
