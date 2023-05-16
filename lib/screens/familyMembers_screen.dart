import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/items_component.dart';
import '../models/models.dart';

class FamilyMembers extends StatelessWidget {
  final List <Models> familyModel=[
    Models(image:'assets/images/family_members/family_father.png',jpName:'Chichioya',enName:'father',sound: 'sounds/family_members/father.wav'),
    Models(image:'assets/images/family_members/family_daughter.png',jpName:'Musume',enName:'daughter',sound:'sounds/family_members/daughter.wav'),
    Models(image:'assets/images/family_members/family_grandfather.png',jpName:'Ojisan',enName:'grandfather',sound: 'sounds/family_members/grand_father.wav'),
    Models(image:'assets/images/family_members/family_mother.png',jpName:'Hahaoya',enName:'mother', sound: 'sounds/family_members/mother.wav'),
    Models(image:'assets/images/family_members/family_grandmother.png',jpName:'Sobo',enName:'grandmother',sound: 'sounds/family_members/grand_mother.wav' ),
    Models(image:'assets/images/family_members/family_older_brother.png',jpName:'Nisan',enName:'older brother',sound: 'sounds/family_members/older_bother.wav'),
    Models(image:'assets/images/family_members/family_older_sister.png',jpName:'Ane',enName:'older sister',   sound: 'sounds/family_members/older_sister.wav'),
    Models(image:'assets/images/family_members/family_younger_brother.png',jpName:'Musuko',enName:'younger brother',   sound: 'sounds/family_members/younger_brohter.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('family mambers'),),
        body:ListView.builder(

          itemBuilder: (context,index)
          {
            return Items(number: familyModel[index], color: Color(0xffcccccc),);
          },
          itemCount: familyModel.length,

        )
    );;
  }
}
