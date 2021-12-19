import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final questiontext;

  Question( this.questiontext);
@override
Widget build(BuildContext context) {
return Container(
  width: double.infinity,
  margin: EdgeInsets.all(20),// من اجل الابتعاد عن حواف الشاشة
  child: Text(questiontext, style: TextStyle(
          fontSize: 26, color: Colors.black),
        textAlign: TextAlign.center,),// لكي يكون النص في المنتصف

);
}
}