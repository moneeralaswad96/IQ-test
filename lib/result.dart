import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  String get res{
    String rs ;
    if (totalScore >= 75){
      rs=' حاد';}
    else if (totalScore <= 30){
      rs=' ضعيف';}
    else {
      rs=" متوسط";
    }
    return res;
  }

  final Function Q ;
  final int totalScore;

  Result( this.Q,this.totalScore);


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlatButton(

              onPressed: Q ,
              child: Text(
                'click here to Restart the IQ Quiz',
                style: TextStyle(fontSize: 24 , color: Colors.black),

              )),
          SizedBox(height: 20,),// مسافة بين كل سطر وسطر
          Text(
            "  your result= $totalScore  ",// طباعة المجموع
            style: TextStyle(fontSize: 30, color: Colors.pink),
          ),
          SizedBox(height: 20,),

        ],
      ),
    );
  }
}