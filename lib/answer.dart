
import 'package:flutter/material.dart';

class Answer extends StatelessWidget{
final String answerText;
final Function A;

  const Answer( this.A,this.answerText);// كل final يحتاج constructer


@override
Widget build(BuildContext context) {
return Container(
  width: double.infinity,// من اجل انا ياخذ السؤال عرض الشاشة
  child: RaisedButton(
      splashColor:Colors.white54,// وميض عند الضغط

      color: Color(0xff7986cb),
      textColor: Colors.white,
      child: Text(answerText,style: TextStyle(fontSize: 22,fontFamily: 'Raleway-Blod'),),
      onPressed:  A),
);
}
}